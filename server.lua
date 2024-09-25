---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()

-- Server-side logic for handling weapon selection
RegisterNetEvent('ali-weaponmenu:giveWeapon', function(weaponId)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    
    print("Weapon ID received: " .. weaponId) -- Debug statement
    
    -- Add logic to give weapon to player using ox_inventory
    if xPlayer then
        exports.ox_inventory:AddItem(src, weaponId, 1)
        TriggerClientEvent('QBCore:Notify', src, 'You have received a weapon: ' .. weaponId, 'success')
    else
        print("Player not found") -- Debug statement
    end
end)

-- Server-side logic for handling attachment application
RegisterNetEvent('ali-weaponmenu:applyAttachment', function(currentWeapon, attachmentId)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    
    print("Attachment ID received: " .. attachmentId .. " for weapon: " .. currentWeapon) -- Debug statement
    
    -- Add logic to apply attachment to the current weapon
    if xPlayer then
        -- Assuming ox_inventory supports weapon attachments
        exports.ox_inventory:AddItem(src, attachmentId, 1)
        TriggerClientEvent('QBCore:Notify', src, 'Attachment applied: ' .. attachmentId, 'success')
    else
        print("Player not found") -- Debug statement
    end
end)

RegisterNetEvent('ali-weaponmenu:applyModification', function(currentWeapon, modificationId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if modificationId == 'increased_damage' then
        TriggerClientEvent('ali-weaponmenu:applyIncreasedDamage', src, currentWeapon, true)
    elseif modificationId == 'infinite_ammo' then
        TriggerClientEvent('ali-weaponmenu:applyInfiniteAmmo', src, currentWeapon, true)
    elseif modificationId == 'reduce_recoil' then
        TriggerClientEvent('ali-weaponmenu:applyReduceRecoil', src, currentWeapon, true)
    elseif modificationId == 'faster_reload' then
        TriggerClientEvent('ali-weaponmenu:applyFasterReload', src, currentWeapon, true)
    elseif modificationId == 'improved_accuracy' then
        TriggerClientEvent('ali-weaponmenu:applyImprovedAccuracy', src, currentWeapon, true)
    elseif modificationId == 'fire_rate' then
        TriggerClientEvent('ali-weaponmenu:applyFireRate', src, currentWeapon, true)
    elseif modificationId == 'armor_piercing' then
        TriggerClientEvent('ali-weaponmenu:applyArmorPiercing', src, currentWeapon, true)
    elseif modificationId == 'weapon_tints' then
        TriggerClientEvent('ali-weaponmenu:selectWeaponTint', src, currentWeapon)
    end
end)

RegisterNetEvent('ali-weaponmenu:applyWeaponTints', function(currentWeapon, tintIndex)
    local src = source
    TriggerClientEvent('ali-weaponmenu:applyWeaponTints', src, currentWeapon, tintIndex)
end)