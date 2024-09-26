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

-- Server-side logic for handling weapon modifications
RegisterNetEvent('ali-weaponmenu:applyModification', function(currentWeapon, modificationId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
        if modificationId == 'infinite_ammo' then
            TriggerClientEvent('ali-weaponmenu:applyInfiniteAmmo', src, currentWeapon, true)
        end
    else
        print("Player not found") -- Debug statement
    end
end)

-- Server-side logic for handling ammo addition
RegisterNetEvent('ali-weaponmenu:addAmmoToInventory', function(ammoId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    print('Received ammo ID:', ammoId) -- Debugging statement

    if Player then
        -- Use ox_inventory to add the ammo item to the player's inventory
        local success, reason = exports.ox_inventory:AddItem(src, ammoId, 1)
        if success then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ammoId], 'add')
        else
            print("Failed to add ammo:", reason) -- Debugging statement
        end
    else
        print("Player not found") -- Debug statement
    end
end)