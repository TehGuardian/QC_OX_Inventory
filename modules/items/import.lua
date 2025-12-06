--[[
╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                                                                               ║
║                          UNIVERSAL FRAMEWORK ITEM IMPORTER                                                    ║
║                                                                                                               ║
╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
║                                                                                                               ║
║    AUTOMATIC ITEM IMPORT FROM FRAMEWORK TO OX_INVENTORY                                                       ║
║                                                                                                               ║
║  This utility allows any framework bridge to automatically import items from their framework's                ║
║  shared item list into ox_inventory's `data/items/imported.lua` file.                                         ║
║                                                                                                               ║
║  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━      ║
║                                                                                                               ║
║     HOW TO USE IN YOUR BRIDGE                                                                                 ║
║                                                                                                               ║
║  1. Require this module:                                                                                      ║
║     local ItemImporter = require 'modules.items.import'                                                       ║
║                                                                                                               ║
║  2. Prepare your items table (array of item objects)                                                          ║
║                                                                                                               ║
║  3. Call the import function:                                                                                 ║
║     ItemImporter.ImportFromFramework(items, 'RSGCore', ignoreList)                                            ║
║                                                                                                               ║
║  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━      ║
║                                                                                                               ║
║    EXAMPLE: RSG CORE BRIDGE                                                                                   ║
║                                                                                                               ║
║  local ItemImporter = require 'modules.items.import'                                                          ║
║  local RSGCore = exports['rsg-core']:GetCoreObject()                                                          ║
║  local items = RSGCore.Shared.Items                                                                           ║
║                                                                                                               ║
║  local ignoreList = { 'weapon_', 'ammo_', 'WEAPON_' }                                                         ║
║  ItemImporter.ImportFromFramework(items, 'RSGCore', ignoreList)                                               ║
║                                                                                                               ║
║  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━      ║
║                                                                                                               ║
║  FIELD MAPPING                                                                                                ║
║                                                                                                               ║
║  Framework fields are automatically mapped to ox_inventory format:                                            ║
║    • name          → name                                                                                     ║
║    • label         → label                                                                                    ║
║    • weight        → weight                                                                                   ║
║    • unique        → stack (inverted: !unique = stack)                                                        ║
║    • shouldClose   → close                                                                                    ║
║    • description   → description                                                                              ║
║    • useable       → client.usetime (if true, sets usetime)                                                   ║
║    • image         → client.image                                                                             ║
║    • decay         → degrade (converted to percentage)                                                        ║
║                                                                                                               ║
╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
--]]

local ItemImporter = {}

---Checks if an item name should be ignored based on ignore patterns
---@param name string The item name to check
---@param ignoreList string[]? List of patterns to ignore (e.g. 'weapon_', 'ammo_')
---@return boolean shouldIgnore True if item should be ignored
local function shouldIgnoreItem(name, ignoreList)
    if not ignoreList then return false end

    for i = 1, #ignoreList do
        if string.find(name:lower(), ignoreList[i]:lower()) then
            return true
        end
    end

    return false
end

---Converts framework item format to ox_inventory format
---@param item table Framework item object
---@param frameworkName string Name of the framework (for logging)
---@return table|nil oxItem Converted item in ox_inventory format, or nil if invalid
local function convertItem(item, frameworkName)
    if type(item) ~= 'table' then
        warn(('Invalid item type from %s: expected table, got %s'):format(frameworkName, type(item)))
        return nil
    end

    -- Basic validation
    if not item.name or not item.label then
        warn(('Skipping invalid item from %s: missing name or label'):format(frameworkName))
        return nil
    end

    local oxItem = {
        label = item.label,
        weight = item.weight or 0,
        stack = not item.unique, -- Invert unique to get stack
        close = item.shouldClose == nil and true or item.shouldClose,
        description = item.description or nil,
    }

    -- Client-side properties
    local clientData = {}

    if item.image then
        clientData.image = item.image
    end

    if item.useable then
        clientData.usetime = 2500 -- Default use time for useable items
    end

    -- Status effects (hunger, thirst, stress)
    if item.hunger or item.thirst or item.stress then
        clientData.status = {
            hunger = item.hunger,
            thirst = item.thirst,
            stress = item.stress
        }
    end

    if next(clientData) then
        oxItem.client = clientData
    end

    -- Decay system (convert to degrade percentage)
    if item.decay then
        -- decay is in minutes, convert to degrade (0.0 - 1.0)
        -- Higher decay = faster degradation
        -- Example: 60 minutes decay = 0.016 per minute degrade rate
        oxItem.degrade = math.min(1.0 / item.decay, 1.0)
    end

    return oxItem
end

---Imports items from a framework's shared items table into data/items/imported.lua
---@param frameworkItems table<string, table> Framework's items table (e.g. RSGCore.Shared.Items)
---@param frameworkName string Name of the framework (e.g. 'RSGCore', 'QBCore', 'ESX')
---@param ignoreList string[]? Optional list of patterns to ignore (e.g. {'weapon_', 'ammo_'})
---@return number importCount Number of items successfully imported
function ItemImporter.ImportFromFramework(frameworkItems, frameworkName, ignoreList)
    if not frameworkItems or table.type(frameworkItems) == 'empty' then
        shared.info(('No items found in %s.Shared.Items to import'):format(frameworkName))
        return 0
    end

    local ItemList = require 'modules.items.shared'
    local dump = {}
    local count = 0

    shared.info(('Starting import from %s.Shared.Items...'):format(frameworkName))

    -- Process each framework item
    for itemName, item in pairs(frameworkItems) do
        if type(item) == 'table' then
            -- Ensure item has a name
            if not item.name then item.name = itemName end

            -- Skip if already exists in ox_inventory
            if ItemList[item.name] then
                goto continue
            end

            -- Skip if matches ignore pattern
            if shouldIgnoreItem(item.name, ignoreList) then
                goto continue
            end

            -- Convert to ox_inventory format
            local oxItem = convertItem(item, frameworkName)
            if oxItem then
                dump[item.name] = oxItem
                count += 1
            end
        end

        ::continue::
    end

    if count == 0 then
        shared.info(('No new items to import from %s (all items already exist or were ignored)'):format(frameworkName))
        return 0
    end

    -- Load existing imported.lua file or create new one
    local filePath = 'data/items/imported.lua'
    local existingFile = LoadResourceFile(shared.resource, filePath)
    local file = {}

    if existingFile and #existingFile > 0 then
        file[1] = string.strtrim(existingFile)
        -- Remove closing brace
        file[1] = file[1]:gsub('}%s*$', '')
    else
        -- Create new file with header
        file[1] = [[
return {
]]
    end

    -- Item format template
    local itemFormat = [[
    [%q] = {
        label = %q,
        weight = %s,
        stack = %s,
        close = %s,%s%s%s
    },
]]
    local fileSize = #file

    -- Add each item
    for itemName, item in pairs(dump) do
        fileSize += 1

        local description = item.description and string.format('\n        description = %q,', item.description) or ''
        local degrade = item.degrade and string.format('\n        degrade = %s,', item.degrade) or ''

        local client = ''
        if item.client then
            local clientParts = {}

            if item.client.image then
                table.insert(clientParts, string.format('image = %q', item.client.image))
            end

            if item.client.usetime then
                table.insert(clientParts, string.format('usetime = %d', item.client.usetime))
            end

            if item.client.status then
                local statusParts = {}
                if item.client.status.hunger then
                    table.insert(statusParts, string.format('hunger = %d', item.client.status.hunger))
                end
                if item.client.status.thirst then
                    table.insert(statusParts, string.format('thirst = %d', item.client.status.thirst))
                end
                if item.client.status.stress then
                    table.insert(statusParts, string.format('stress = %d', item.client.status.stress))
                end

                if #statusParts > 0 then
                    table.insert(clientParts, string.format('status = { %s }', table.concat(statusParts, ', ')))
                end
            end

            if #clientParts > 0 then
                client = string.format('\n        client = {\n            %s\n        },', table.concat(clientParts, ',\n            '))
            end
        end

        local itemStr = itemFormat:format(
            itemName,
            item.label,
            item.weight,
            tostring(item.stack),
            tostring(item.close),
            description,
            degrade,
            client
        )

        file[fileSize] = itemStr
    end

    -- Close the return table
    file[fileSize + 1] = '}\n'

    -- Save the file
    local success = SaveResourceFile(shared.resource, filePath, table.concat(file), -1)

    if success then
        shared.info(('Successfully imported %d items from %s to %s'):format(count, frameworkName, filePath))
        shared.info(('Please restart the resource to load the new items'):format())
    else
        warn(('Failed to save imported items to %s'):format(filePath))
    end

    return count
end

return ItemImporter
