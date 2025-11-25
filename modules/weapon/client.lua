--[[
?     Quantum Projects / ox_inventory-RDR3 Integration
?     Weapon Module w/ Conditional Weapon Wheel & Direct Dual Wield Support

?    Features:
       * Toggleable weapon wheel usage via 'EnableWeaponWheel' (convar/init.lua flag).
       * Automatic dual wield equip when two eligible sidearms are equipped even with wheel disabled/enabled.
       * Degradation / soot / dirt stubs (non-blocking; assertions optional).
       * Cleaned syntax & fixed precedence bugs.
       * Correct full native hash for SetWeaponsNoAutoswap.

    TODO server-side:
!  	  • Persist per-weapon degradation & soot.
]]--

if not lib then return end

local Weapon = {}
local Items  = require 'modules.items.client'
local Utils  = require 'modules.utils.client'
local DataView = require 'modules.dataview.client'

--[[ 
? Sets global weapon wheel toggle (true = enable weapon wheel (1 = blocked, 0 = allowed) ).
--]]
function Weapon.SetEnableWeaponWheel(state)
    EnableWeaponWheel = state and true or false
end

--[[ 
? Automatically grants an offhand holster item if the player lacks one (RDR3 only).
--]]
local AutoGrantOffhandHolster = true  --! set false if you want outfit gating !--
--[[ 
? Defines which weapon groups can be dual-wielded when weapon wheel is disabled.
--]]
local DualEligibleGroups = {
    ['GROUP_PISTOL']   = true,
    ['GROUP_REVOLVER'] = true,
    -- add more if desired (e.g., ['GROUP_STUNGUN']=true)
}

--[[ 
! Attachpoint constants for primary/offhand weapons in RDR3 !
--]]
local ATTACH_PRIMARY  = 2  --? right / main holster
local ATTACH_OFFHAND  = 3  --? left  / offhand holster
--[[ 
? Animation dictionary mapping for weapon draw/holster by group.
--]]
local anims = {}
anims['GROUP_MELEE']      = { 'melee@holster', 'unholster', 200, 'melee@holster', 'holster', 600 }
anims['GROUP_PISTOL']     = { 'reaction@intimidation@cop@unarmed', 'intro', 400, 'reaction@intimidation@cop@unarmed', 'outro', 450 }
anims['GROUP_STUNGUN']    = anims['GROUP_PISTOL']

--? ############################################################# ?--
--? # Local Helpers												  ?--
--? ############################################################# ?--
local function vehicleIsCycle(vehicle)
    local class = GetVehicleClass(vehicle)
    return class == 8 or class == 13
end

local function IsDualEligibleWeaponGroup(groupHash)
    return DualEligibleGroups[groupHash] == true
end

local function _RequestWeaponAsset(hash)
    Citizen.InvokeNative(0x72D4CB5DB927009C, hash, 0, true) -- _REQUEST_WEAPON_ASSET
end

local function _GiveWeaponToPedAttach(ped, weaponHash, ammo, attachPoint, addReason)
    addReason = addReason or 'ADD_REASON_DEFAULT'
    --! GIVE_WEAPON_TO_PED (RDR3 extended)
    --! ped, weaponHash, ammoCount, bEquipNow, bForceInHand?, attachPoint, p6(always true?), xRot, yRot, addReason, p10, zRot, p12
	ammo = 0
    Citizen.InvokeNative(0x5E3BDDBCB83F3D84, ped, weaponHash, ammo, true, false, attachPoint, true, 0.0, 0.0, addReason, true, 0.0, false)
end

-- Inventory GUID helpers ----------------------------------------------------
local function _GetGuidFromItemId(inventoryId, itemData, category, slotId)
    local outItem = DataView.ArrayBuffer(8 * 13)
    local success = Citizen.InvokeNative(0x886DFD3E185C8A89, inventoryId, itemData or 0, category, slotId, outItem:Buffer())
    return success and outItem or nil
end

local function _AddWardrobeInventoryItem(itemHash, slotHash)
    local addReason   = 'ADD_REASON_DEFAULT'
    local inventoryId = 1 -- INVENTORY_SP_PLAYER (works MP in RedM)

    -- _ITEMDATABASE_IS_KEY_VALID
    if Citizen.InvokeNative(0x6D5D51B188333FD1, itemHash, 0) ~= 1 then
        return false
    end

    local characterItem = _GetGuidFromItemId(inventoryId, nil, 'CHARACTER', 0xA1212100)
    if not characterItem then return false end

    local wardrobeItem = _GetGuidFromItemId(inventoryId, characterItem:Buffer(), 'WARDROBE', 0x3DABBFA7)
    if not wardrobeItem then return false end

    local itemData = DataView.ArrayBuffer(8 * 13)
    local added = Citizen.InvokeNative(0xCB5D11F9508A928D, inventoryId, itemData:Buffer(), wardrobeItem:Buffer(), itemHash, slotHash, 1, addReason)
    if not added then return false end

    local equipped = Citizen.InvokeNative(0x734311E2852760D0, inventoryId, itemData:Buffer(), true)
    return equipped == 1
end

local DualState = {
    hasOffhandHolster = false,
    primaryHash   = nil, --? ped carry slot ATTACH_PRIMARY
    secondaryHash = nil, --? ped carry slot ATTACH_OFFHAND
}

local function EnsureOffhandHolster(ped)
    if not IS_RDR3 or not AutoGrantOffhandHolster or DualState.hasOffhandHolster then
        return true
    end
    --? Provide both cosmetic & functional upgrade.
    local holsterItemHash   = 'UPGRADE_OFFHAND_HOLSTER'
    local clothingItemHash  = 'CLOTHING_ITEM_M_OFFHAND_000_TINT_004'
    local SLOT_UPGRADE_HASH = 0x39E57B01
    local SLOT_CLOTH_HASH   = 0xF20B6B4A

    _AddWardrobeInventoryItem(clothingItemHash, SLOT_CLOTH_HASH)
    _AddWardrobeInventoryItem(holsterItemHash,  SLOT_UPGRADE_HASH)

    DualState.hasOffhandHolster = true
    return true
end

--? Utility: soft assert (logs but does not halt)
local function softAssert(cond, msg)
    if not cond then
        print(('^3[Weapon] softAssert failed:^7 %s'):format(msg))
    end
    return cond
end

--! #############################################################
--! # Weapon Equip
--! #############################################################
local function RefreshDualState(ped)
    local found = {}
    -- Check attach slots 2 to 5 (primary, offhand, and extras)
    for attach = 2, 5 do
        local _, weaponHash = GetCurrentPedWeapon(ped, 0, attach, 0)
        if weaponHash and weaponHash ~= `WEAPON_UNARMED` then
            local group = GetWeapontypeGroup(weaponHash)
            if IsDualEligibleWeaponGroup(group) then
                table.insert(found, weaponHash)
            end
        end
    end

    DualState.primaryHash   = found[1] or nil
    DualState.secondaryHash = found[2] or nil
    return #found >= 2
end

--[[ 
? Equips a weapon item for the player. Handles:
     * Ammo type and ammo sync
	 * Dual-wield support
     * Degradation / soot / dirt stubs
--]]
function Weapon.Equip(item, data, noWeaponAnim)
    local playerPed = cache.ped
    local coords    = GetEntityCoords(playerPed, true)
    local sleep

    --? Animations (holster / draw)
    if client.weaponanims then
        if noWeaponAnim or (cache.vehicle and vehicleIsCycle(cache.vehicle)) then
            goto skipAnim
        end

        local anim = data.anim or anims[GetWeapontypeGroup(data.hash)]
        if anim == anims['GROUP_PISTOL'] and not client.hasGroup(shared.police) then
            anim = nil
        end

        sleep = anim and anim[3] or 1200

        Utils.PlayAnimAdvanced(
            sleep,
            anim and anim[1] or 'reaction@intimidation@1h',
            anim and anim[2] or 'intro',
            coords.x, coords.y, coords.z,
            0, 0, GetEntityHeading(playerPed),
            8.0, 3.0, sleep*2, 50, 0.1
        )
    end

    ::skipAnim::

    item.hash = data.hash
    item.ammo = data.ammoname

    if IS_GTAV then
        item.melee = GetWeaponDamageType(data.hash) == 2 and 0
    elseif IS_RDR3 then
        item.melee = IsWeaponAGun(data.hash) == 0
    end

    item.timer     = 0
    item.throwable = data.throwable
    item.group     = GetWeapontypeGroup(item.hash)

    if IS_GTAV then
        GiveWeaponToPed(playerPed, data.hash, 0, false, true)
    end

    --! ######################################################### !--
    --! # RDR3 branch (dual wield logic lives here)				  !--
    --! ######################################################### !--
    if IS_RDR3 then
        EnsureOffhandHolster(playerPed)

        -- #####################################################################
        -- SAFEGUARD: Prevent dual wield from slots 3-5
        -- #####################################################################
        if item.slot and item.slot > 2 and IsDualEligibleWeaponGroup(item.group) then
            if Utils and Utils.Notify then
                Utils.Notify("Dual wield weapons must be equipped in slots 1 or 2.", "error")
            else
                TriggerEvent("chat:addMessage", { args = { "^1Dual wield weapons must be in slot 1 or 2!" } })
            end
            return nil -- block equip
        end

        -- If ped lacks this weapon, add it (delayed give).
        if not HasPedGotWeapon(playerPed, data.hash, 0, false) then
            if data.throwable then
                Citizen.InvokeNative(0xB282DC6EBD803C75, playerPed, data.hash, tonumber(item.count) or 1, true, 0) -- GIVE_DELAYED_WEAPON_TO_PED
            else
                Citizen.InvokeNative(0xB282DC6EBD803C75, playerPed, data.hash, 0, true, 0)
				SetAmmoTypeForPedWeapon(playerPed, data.hash, GetHashKey(item.metadata.specialAmmo or item.ammo))
            end

            local metaComponents = item.metadata and item.metadata.components
            if metaComponents then
                for i = 1, #metaComponents do
                    ApplyWeaponComponent(playerPed, data.hash, metaComponents[i])
                end
            end
        end

        --! Direct equip path if we are *not* using the weapon wheel !--
        if not EnableWeaponWheel then
            local groupHash      = item.group
            local isGun          = (IsWeaponAGun(data.hash) ~= 0)
            local dualEligible   = isGun and IsDualEligibleWeaponGroup(groupHash)
            local attachPoint    = ATTACH_PRIMARY

            if dualEligible then
                if DualState.primaryHash and not DualState.secondaryHash and DualState.primaryHash ~= data.hash then
                    attachPoint = ATTACH_OFFHAND
                elseif not DualState.primaryHash and DualState.secondaryHash and DualState.secondaryHash ~= data.hash then
                    attachPoint = ATTACH_PRIMARY
                elseif DualState.primaryHash == data.hash then
                    attachPoint = ATTACH_PRIMARY
                elseif DualState.secondaryHash == data.hash then
                    attachPoint = ATTACH_OFFHAND
                else
                    attachPoint = ATTACH_OFFHAND
                end
            end

            _RequestWeaponAsset(data.hash)
            _GiveWeaponToPedAttach(playerPed, data.hash, 0, attachPoint)

			local dualEligible = IsDualEligibleWeaponGroup(item.group)
			local hasTwoDualWeapons = RefreshDualState(playerPed)

			if dualEligible and hasTwoDualWeapons then
				Citizen.InvokeNative(0x83B8D50EB9446BBA, playerPed, true) -- Enable dual wield
				TaskSwapWeapon(playerPed, 0, 0, 0, 0)
			else
				SetCurrentPedWeapon(playerPed, data.hash, false, 0, false, false)
			end

            if dualEligible and DualState.primaryHash and DualState.secondaryHash then
                Citizen.InvokeNative(0x83B8D50EB9446BBA, playerPed, true)
                TaskSwapWeapon(playerPed, 0, 0, 0, 0)
            else
                SetCurrentPedWeapon(playerPed, data.hash, false, 0, false, false)
            end

        else
            local isDualWeaponActived = GetAllowDualWield(playerPed)
            local _, primaryWeapon    = GetCurrentPedWeapon(playerPed, 0, 2, 0)
            local _, secondaryWeapon  = GetCurrentPedWeapon(playerPed, 0, 3, 0)

            local hasPrimary   = primaryWeapon   and primaryWeapon   ~= 'WEAPON_UNARMED'
            local hasSecondary = secondaryWeapon and secondaryWeapon ~= 'WEAPON_UNARMED'

            if hasPrimary and hasSecondary and not isDualWeaponActived then
                Citizen.InvokeNative(0x83B8D50EB9446BBA, playerPed, true)
                isDualWeaponActived = true
            end

            SetCurrentPedWeapon(playerPed, data.hash, false, 0, false, false)

            if hasPrimary and hasSecondary and primaryWeapon ~= secondaryWeapon then
                Citizen.InvokeNative(0x83B8D50EB9446BBA, playerPed, true)
            end
        end

        Citizen.InvokeNative(0xADF692B254977C0C, playerPed, true)
    end

    -- GTAV Branch
    if IS_GTAV then
        local ammo = item.metadata.ammo or (item.throwable and 1 or 0)
        SetCurrentPedWeapon(playerPed, data.hash, true)
        SetPedCurrentWeaponVisible(playerPed, true, false, false, false)
        SetWeaponsNoAutoswap(true)
        SetPedAmmo(playerPed, data.hash, ammo)
        SetTimeout(0, function() RefillAmmoInstantly(playerPed) end)
    end

    -- Ammo for RDR3
    if IS_RDR3 then
        local ammoTypehash = GetHashKey(item.metadata.specialAmmo or data.ammoname)
        SetPedAmmoByType(playerPed, ammoTypehash, item.metadata.ammo or 0)
        Citizen.InvokeNative(0xCC9C4393523833E2, playerPed, data.hash, ammoTypehash)
    end

    if item.group == 'GROUP_PETROLCAN' or item.group == 'GROUP_FIREEXTINGUISHER' then
        item.metadata.ammo = item.metadata.durability
        SetPedInfiniteAmmo(playerPed, true, data.hash)
    end

    TriggerEvent('ox_inventory:currentWeapon', item, 'equipped')

    if client.weaponnotify then
        Utils.ItemNotify({ item, 'ui_equipped' })
    end

    -- Degradation Apply
    if IS_RDR3 and IsWeaponAGun(data.hash) ~= 0 then
        Citizen.CreateThreadNow(function()
            while GetCurrentPedWeaponEntityIndex(playerPed, 0) == 0 do
                Wait(0)
            end
            if item.slot ~= data.slot then
                return
            end

            local weaponEntityId = GetCurrentPedWeaponEntityIndex(playerPed, 0)

            local degradation = item.metadata.degradation or item.metadata.durability or 0
            local soot        = item.metadata.soot or 0
            local dirt        = item.metadata.dirt or 0

            softAssert(degradation ~= nil, 'Missing degradation')
            Citizen.InvokeNative(0xA7A57E89E965D839, weaponEntityId, degradation + 0.0001)

            softAssert(soot ~= nil, 'Missing soot')
            Citizen.InvokeNative(0xA9EF4AD10BDDDB57, weaponEntityId, soot + 0.0001, false)

            softAssert(dirt ~= nil, 'Missing dirt')
            Citizen.InvokeNative(0x812CE61DEBCAB948, weaponEntityId, dirt + 0.0001, false)

            TriggerEvent('ox_inventory:equippedWeaponDegradationIsReady', item.slot)
        end)
    end

    return item, sleep
end

--[[ 
! Disarms the current weapon, saving ammo state and clearing ped ammo to avoid duplication
--]]
function Weapon.Disarm(currentWeapon, noAnim, keepHolstered)
    if currentWeapon?.timer then
        currentWeapon.timer = nil
        TriggerServerEvent('ox_inventory:updateWeapon')
        SetPedAmmo(cache.ped, currentWeapon.hash, 0)

        if client.weaponanims and not noAnim then
            if cache.vehicle and vehicleIsCycle(cache.vehicle) then
                goto skipAnim
            end

            ClearPedSecondaryTask(cache.ped)

            local item   = Items[currentWeapon.name]
            local coords = GetEntityCoords(cache.ped, true)
            local anim   = item and (item.anim or anims[GetWeapontypeGroup(currentWeapon.hash)])

            if anim == anims['GROUP_PISTOL'] and not client.hasGroup(shared.police) then
                anim = nil
            end

            local sleep = anim and anim[6] or 1400
            Utils.PlayAnimAdvanced(
                sleep,
                anim and anim[4] or 'reaction@intimidation@1h',
                anim and anim[5] or 'outro',
                coords.x, coords.y, coords.z,
                0, 0, GetEntityHeading(cache.ped),
                8.0, 3.0, sleep, 50, 0
            )
        end
        ::skipAnim::

        if client.weaponnotify then
            Utils.ItemNotify({ currentWeapon, 'ui_holstered' })
        end

        TriggerEvent('ox_inventory:currentWeapon', nil, 'disarm')
    end

	if IS_RDR3 and currentWeapon then
		if not keepHolstered then
			local ammoHash = GetPedAmmoTypeFromWeapon(cache.ped, currentWeapon.hash)
			SetPedAmmoByType(cache.ped, ammoHash, 0)
			RemoveWeaponFromPed(cache.ped, currentWeapon.hash, true, 0)
			RemoveWeaponFromPed(cache.ped, currentWeapon.hash, true, 1)
		end
	end

    return nil
end

--[[ 
! Clears all weapons on ped.
--]]
function Weapon.ClearAll(currentWeapon)
    if currentWeapon then
        TriggerEvent('ox_inventory:currentWeapon', nil, 'disarm')
    end
    RemoveAllPedWeapons(cache.ped, true, true)
    return nil
end

return Weapon
