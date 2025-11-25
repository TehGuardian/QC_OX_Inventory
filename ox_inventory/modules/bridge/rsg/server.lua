local Inventory = require 'modules.inventory.server'
local Items = require 'modules.items.server'

local RSGCore

---@param item SlotWithItem?
---@return SlotWithItem?
local function setItemCompatibilityProps(item)
    if not item then return end

    item.info = item.metadata
    item.amount = item.count

    return item
end

local function calculateTotal(dollars, cents)
    local totalCents = (dollars * 100) + cents
    return math.floor(totalCents) / 100
end

-- Helper function to get money parts (dollars and cents)
local function getParts(number)
    local totalCents = math.floor((number * 100) + 0.5) -- Round to nearest cent
    local dollars = math.floor(totalCents / 100)
    local cents = totalCents % 100
    return dollars, cents
end

local function syncMoneyToRSGCore(source)
    local player = server.GetPlayerFromId(source)
    if not player then return end

    local dollarCount = Inventory.GetItemCount(source, 'dollar') or 0
    local centCount = Inventory.GetItemCount(source, 'cent') or 0
    local bloodDollarCount = Inventory.GetItemCount(source, 'blood_dollar') or 0
    local bloodCentCount = Inventory.GetItemCount(source, 'blood_cent') or 0

    local totalCash = calculateTotal(dollarCount, centCount)
    local totalBloodMoney = calculateTotal(bloodDollarCount, bloodCentCount)

    -- Update RSG Core money without triggering the money change event
    player.PlayerData.money.cash = totalCash
    player.PlayerData.money.bloodmoney = totalBloodMoney
    
    -- Trigger HUD update
    TriggerClientEvent('hud:client:OnMoneyChange', source, 'cash', totalCash, false)
    TriggerClientEvent('hud:client:OnMoneyChange', source, 'bloodmoney', totalBloodMoney, false)
end

local function setupPlayer(Player)
    Player.PlayerData.inventory = Player.PlayerData.items
    Player.PlayerData.identifier = Player.PlayerData.citizenid
    Player.PlayerData.name = ('%s %s'):format(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname)
    
    -- Add player methods FIRST before doing anything else
    RSGCore.Functions.AddPlayerMethod(Player.PlayerData.source, "AddItem", function(item, amount, slot, info)
        return Inventory.AddItem(Player.PlayerData.source, item, amount, info, slot)
    end)

    RSGCore.Functions.AddPlayerMethod(Player.PlayerData.source, "RemoveItem", function(item, amount, slot)
        return Inventory.RemoveItem(Player.PlayerData.source, item, amount, nil, slot)
    end)

    RSGCore.Functions.AddPlayerMethod(Player.PlayerData.source, "GetItemBySlot", function(slot)
        return setItemCompatibilityProps(Inventory.GetSlot(Player.PlayerData.source, slot))
    end)

    RSGCore.Functions.AddPlayerMethod(Player.PlayerData.source, "GetItemByName", function(itemName)
        return setItemCompatibilityProps(Inventory.GetSlotWithItem(Player.PlayerData.source, itemName))
    end)

    RSGCore.Functions.AddPlayerMethod(Player.PlayerData.source, "GetItemsByName", function(itemName)
        return setItemCompatibilityProps(Inventory.GetSlotsWithItem(Player.PlayerData.source, itemName))
    end)

    RSGCore.Functions.AddPlayerMethod(Player.PlayerData.source, "ClearInventory", function(filterItems)
        Inventory.Clear(Player.PlayerData.source, filterItems)
    end)

    RSGCore.Functions.AddPlayerMethod(Player.PlayerData.source, "SetInventory", function(items)
        return exports.ox_inventory:setPlayerInventory(Player.PlayerData.source, items)
    end)

    -- NOW set up the inventory after methods are available
    server.setPlayerInventory(Player.PlayerData)

    -- Add starter items and money items
    Inventory.SetItem(Player.PlayerData.source, 'bread', 5)
    Inventory.SetItem(Player.PlayerData.source, 'water', 5)
    
    -- Convert money to items if money items are enabled
    local cashDollars, cashCents = getParts(Player.PlayerData.money.cash)
    local bloodDollars, bloodCents = getParts(Player.PlayerData.money.bloodmoney)
    
    if cashDollars > 0 then
        Inventory.SetItem(Player.PlayerData.source, 'dollar', cashDollars)
    end
    if cashCents > 0 then
        Inventory.SetItem(Player.PlayerData.source, 'cent', cashCents)
    end
    if bloodDollars > 0 then
        Inventory.SetItem(Player.PlayerData.source, 'blood_dollar', bloodDollars)
    end
    if bloodCents > 0 then
        Inventory.SetItem(Player.PlayerData.source, 'blood_cent', bloodCents)
    end
end

AddEventHandler('RSGCore:Server:OnPlayerUnload', server.playerDropped)

AddEventHandler('RSGCore:Server:OnJobUpdate', function(source, job)
    local inventory = Inventory(source)
    if not inventory then return end
    inventory.player.groups[inventory.player.job] = nil
    inventory.player.job = job.name
    inventory.player.groups[job.name] = job.grade.level
end)

AddEventHandler('RSGCore:Server:OnGangUpdate', function(source, gang)
    local inventory = Inventory(source)
    if not inventory then return end
    inventory.player.groups[inventory.player.gang] = nil
    inventory.player.gang = gang.name
    inventory.player.groups[gang.name] = gang.grade.level
end)

AddEventHandler('onResourceStart', function(resource)
    if resource ~= 'rsg-weapons' or resource ~= 'rsg-weaponcomp' then return end
    StopResource(resource)
end)

AddEventHandler('ox_inventory:itemAdded', function(source, itemName, count)
    if itemName == 'dollar' or itemName == 'cent' or itemName == 'blood_dollar' or itemName == 'blood_cent' then
        syncMoneyToRSGCore(source)
    end
end)

AddEventHandler('ox_inventory:itemRemoved', function(source, itemName, count)
    if itemName == 'dollar' or itemName == 'cent' or itemName == 'blood_dollar' or itemName == 'blood_cent' then
        syncMoneyToRSGCore(source)
    end
end)

AddEventHandler('RSGCore:Server:PlayerLoaded', setupPlayer)

SetTimeout(500, function()
    RSGCore = exports['rsg-core']:GetCoreObject()
    server.GetPlayerFromId = RSGCore.Functions.GetPlayer
    local weapState = GetResourceState('rsg-weapons')

    if weapState ~= 'missing' and (weapState == 'started' or weapState == 'starting') then
        StopResource('rsg-weapons')
    end

    local shopState = GetResourceState('rsg-weaponcomp')

    if shopState ~= 'missing' and (shopState == 'started' or shopState == 'starting') then
        StopResource('rsg-weaponcomp')
    end

    for _, Player in pairs(RSGCore.Functions.GetRSGPlayers()) do setupPlayer(Player) end
end)

function server.UseItem(source, itemName, data)
    local cb = RSGCore.Functions.CanUseItem(itemName)
    return cb and cb(source, data)
end

---@diagnostic disable-next-line: duplicate-set-field
function server.setPlayerData(player)
    local groups = {
        [player.job.name] = player.job.grade.level,
        [player.gang.name] = player.gang.grade.level
    }

    return {
        source = player.source,
        name = ('%s %s'):format(player.charinfo.firstname, player.charinfo.lastname),
        groups = groups,
        sex = player.charinfo.gender,
        dateofbirth = player.charinfo.birthdate,
        job = player.job.name,
        gang = player.gang.name,
    }
end

-- Simplified syncInventory that works with RSG Core's money system
---@diagnostic disable-next-line: duplicate-set-field
function server.syncInventory(inv)
    local player = server.GetPlayerFromId(inv.id)
    if not player or not player.Functions then return end -- Add safety check
    
    player.Functions.SetPlayerData('items', inv.items)
    
    local dollarCount = Inventory.GetItemCount(inv.id, 'dollar') or 0
    local centCount = Inventory.GetItemCount(inv.id, 'cent') or 0
    local bloodDollarCount = Inventory.GetItemCount(inv.id, 'blood_dollar') or 0
    local bloodCentCount = Inventory.GetItemCount(inv.id, 'blood_cent') or 0

    local totalCash = calculateTotal(dollarCount, centCount)
    local totalBloodMoney = calculateTotal(bloodDollarCount, bloodCentCount)

    if totalCash ~= player.Functions.GetMoney('cash') then
        player.Functions.SetMoney('cash', totalCash, "Sync cash with inventory")
    end

    if totalBloodMoney ~= player.Functions.GetMoney('bloodmoney') then
        player.Functions.SetMoney('bloodmoney', totalBloodMoney, "Sync bloodmoney with inventory")
    end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.hasLicense(inv, license)
    local player = server.GetPlayerFromId(inv.id)
    return player and player.PlayerData.metadata.licences[license]
end

---@diagnostic disable-next-line: duplicate-set-field
function server.buyLicense(inv, license)
    local player = server.GetPlayerFromId(inv.id)
    if not player then return end

    if player.PlayerData.metadata.licences[license.name] then
        return false, 'already_have'
    end
    
    local totalMoney
    local dollarCount = Inventory.GetItemCount(inv.id, 'dollar') or 0
    local centCount = Inventory.GetItemCount(inv.id, 'cent') or 0
    totalMoney = calculateTotal(dollarCount, centCount)
    
    if totalMoney < license.price then
        return false, 'can_not_afford'
    end

    player.Functions.RemoveMoney('cash', license.price, "License purchase")
    player.PlayerData.metadata.licences[license.name] = true
    player.Functions.SetMetaData('licences', player.PlayerData.metadata.licences)

    return true, 'have_purchased'
end

--- Takes traditional item data and updates it to support ox_inventory, i.e.
--- ```
--- Old: {1:{"name": "cola", "amount": 1, "label": "Cola", "slot": 1}, 2:{"name": "burger", "amount": 3, "label": "Burger", "slot": 2}}
--- New: [{"slot":1,"name":"cola","count":1}, {"slot":2,"name":"burger","count":3}]
---```
---@diagnostic disable-next-line: duplicate-set-field
function server.convertInventory(playerId, items)
    if type(items) == 'table' then
        local player = server.GetPlayerFromId(playerId)
        local returnData, totalWeight = table.create(#items, 0), 0
        local slot = 0

        if player then
            for name in pairs(server.accounts) do
                local hasThis = false
                for _, data in pairs(items) do
                    if data.name == name then
                        hasThis = true
                    end
                end
            end
        end

        for _, data in pairs(items) do
            local item = Items(data.name)

            if item?.name then
                local metadata, count = Items.Metadata(playerId, item, data.info, data.amount or data.count or 1)
                local weight = Inventory.SlotWeight(item, { count = count, metadata = metadata })
                totalWeight += weight
                slot += 1
                returnData[slot] = {
                    name = item.name,
                    label = item.label,
                    weight = weight,
                    slot = slot,
                    count = count,
                    description =
                    item.description,
                    metadata = metadata,
                    stack = item.stack,
                    close = item.close
                }
            end
        end

        return returnData, totalWeight
    end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.isPlayerBoss(playerId)
    local Player = RSGCore.Functions.GetPlayer(playerId)

    return Player.PlayerData.job.isboss or Player.PlayerData.gang.isboss
end

local function export(exportName, func)
    AddEventHandler(('__cfx_export_%s_%s'):format(string.strsplit('.', exportName, 2)), function(setCB)
        setCB(func or function()
            error(("export '%s' is not supported when using ox_inventory"):format(exportName))
        end)
    end)
end

---Imagine if somebody who uses qb/qbox would PR these functions.
export('rsg-inventory.LoadInventory', function(playerId)
    if Inventory(playerId) then return end

    local player = RSGCore.Functions.GetPlayer(playerId)

    if player then
        setupPlayer(player)

        return Inventory(playerId).items
    end
end)

export('rsg-inventory.SaveInventory', function(playerId)
    if type(playerId) ~= 'number' then
        TypeError('playerId', 'number', type(playerId))
    end

    Inventory.Save(playerId)
end)

export('rsg-inventory.SetInventory', function(invId, items)
    return exports.ox_inventory:setPlayerInventory(invId, items)
end)

export('rsg-inventory.SetItemData')
export('rsg-inventory.UseItem')
export('rsg-inventory.GetSlotsByItem')
export('rsg-inventory.GetFirstSlotByItem')

export('rsg-inventory.GetItemBySlot', function(playerId, slotId)
    return Inventory.GetSlot(playerId, slotId)
end)

export('rsg-inventory.GetTotalWeight', function(playerId)
    local inventory = exports.ox_inventory:GetInventory(playerId)
    return inventory and inventory.weight or 0
end)

export('rsg-inventory.GetItemsByName', function(playerId, itemName)
    local items = Inventory.GetSlotsWithItem(playerId, itemName)
    if not items then return {} end
    
    -- Convert to RSG format with compatibility props
    local result = {}
    for i, item in pairs(items) do
        if item then
            item.info = item.metadata
            item.amount = item.count
            result[i] = item
        end
    end
    return result
end)

export('rsg-inventory.GetSlots')
export('rsg-inventory.GetItemCount')

export('rsg-inventory.CanAddItem', function(playerId, itemName, amount)
    return (Inventory.CanCarryAmount(playerId, itemName) or 0) >= amount
end)

export('rsg-inventory.ClearInventory', function(playerId, filter)
    Inventory.Clear(playerId, filter)
end)

export('rsg-inventory.CloseInventory', function(playerId, inventoryId)
    local playerInventory = Inventory(playerId)

    if not playerInventory then return end

    local inventory = Inventory(playerInventory.open)

    if inventory and (inventoryId == inventory.id or not inventoryId) then
        playerInventory:closeInventory()
    end
end)

export('rsg-inventory.OpenInventory', function(playerId, invId, data)
    if data and data.maxweight and data.slots then
        exports.ox_inventory:RegisterStash(invId, data.label or invId, data.slots, data.maxweight)
    end
    return exports.ox_inventory:forceOpenInventory(playerId, 'stash', invId)
end)

export('rsg-inventory.OpenInventoryById', function(playerId, targetId)
    return exports.ox_inventory:forceOpenInventory(playerId, 'player', targetId)
end)

local pendingShops = {}

export('rsg-inventory.CreateShop', function(shopData)
    local oxShopData = {
        name = shopData.name,
        inventory = {},
        groups = shopData.groups,
    }
    
    if shopData.items then
        for i, item in pairs(shopData.items) do
            oxShopData.inventory[i] = {
                name = item.name,
                price = item.price,
                count = item.amount or item.count or 1
            }
        end
    end
    
    pendingShops[shopData.name] = oxShopData
    return true
end)

export('rsg-inventory.OpenShop', function(playerId, shopName)
    local player = RSGCore.Functions.GetPlayer(playerId)
    if not player then return false end

    local shopData = pendingShops[shopName]
    if not shopData then return false end

    local ped = GetPlayerPed(playerId)
    local coords = GetEntityCoords(ped)

    -- Add the player's current location to the shop data
    shopData.locations = {{
        coords = coords,
        size = vec3(2, 2, 2)
    }}

    exports.ox_inventory:RegisterShop(shopName, shopData)

    TriggerClientEvent('rsg-inventory:openShop', playerId, {type = shopName, id = 1})
    return true
end)

export('rsg-inventory.CreateInventory', function(invId, data)
    if data and data.maxweight and data.slots then
        exports.ox_inventory:RegisterStash(invId, data.label or invId, data.slots, data.maxweight)
    end
end)

export('rsg-inventory.AddItem', function(invId, itemName, amount, slot, metadata, reason)
    if exports.ox_inventory:CanCarryItem(invId, itemName, amount, metadata) then
        exports.ox_inventory:AddItem(invId, itemName, amount, metadata, slot)
        return true
    end
    return false
end)

export('rsg-inventory.RemoveItem', function(invId, itemName, amount, slot, reason)
    if exports.ox_inventory:RemoveItem(invId, itemName, amount, nil, slot) then
        return true
    else
        warn('Failed to remove item:', itemName)
        return false
    end
end)

export('rsg-inventory.HasItem', function(items, amount)
    amount = amount or 1

    local count = exports.ox_inventory:Search('count', items)

    if type(items) == 'table' and type(count) == 'table' then
        for _, v in pairs(count) do
            if v < amount then
                return false
            end
        end

        return true
    end

    return count >= amount
end)
