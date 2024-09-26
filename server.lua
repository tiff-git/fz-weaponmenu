---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()

-- Server-side logic for handling weapon selection
RegisterNetEvent('ali-weaponmenu:giveWeapon', function(weaponId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    print("Weapon ID received: " .. weaponId) -- Debug statement
    
    if Player then
        -- Use ox_inventory to add the weapon to the player's inventory
        local success, reason = exports.ox_inventory:AddItem(src, weaponId, 1)
        if success then
            TriggerClientEvent('QBCore:Notify', src, 'You have received a weapon: ' .. weaponId, 'success')
        else
            print("Failed to add weapon:", reason) -- Debugging statement
        end
    else
        print("Player not found") -- Debug statement
    end
end)

-- Server-side logic for handling component addition
RegisterNetEvent('ali-weaponmenu:addComponentToInventory', function(component)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        -- Use ox_inventory to add the component to the player's inventory
        local success, reason = exports.ox_inventory:AddItem(src, component, 1)
        if success then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[component], 'add')
        else
            print("Failed to add component:", reason) -- Debugging statement
        end
    else
        print("Player not found") -- Debug statement
    end
end)

-- Server-side logic for handling skin addition
RegisterNetEvent('ali-weaponmenu:addSkinToInventory', function(skinId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    print('Received skin ID:', skinId) -- Debugging statement

    if Player then
        -- Use ox_inventory to add the skin item to the player's inventory
        local success, reason = exports.ox_inventory:AddItem(src, skinId, 1)
        if success then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[skinId], 'add')
        else
            print("Failed to add skin:", reason) -- Debugging statement
        end
    else
        print("Player not found") -- Debug statement
    end
end)

-- Server-side logic for handling weapon modifications
RegisterNetEvent('ali-weaponmenu:applyModification', function(currentWeapon, modificationId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
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
    else
        print("Player not found") -- Debug statement
    end
end)