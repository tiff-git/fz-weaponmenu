local QBCore = exports['qb-core']:GetCoreObject()

-- Server-side logic for handling weapon selection
RegisterNetEvent('ali-weaponmenu:selectWeapon', function(weaponId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
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
RegisterNetEvent('ali-weaponmenu:addModificationToInventory', function(modificationId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
        -- Use ox_inventory to add the modification to the player's inventory
        local success, reason = exports.ox_inventory:AddItem(src, modificationId, 1)
        if success then
            TriggerClientEvent('QBCore:Notify', src, 'Modification added to your inventory', 'success')
        else
            print("Failed to add modification:", reason) -- Debugging statement
        end
    else
        print("Player not found") -- Debug statement
    end
end)

-- Server-side logic for handling ammo addition
RegisterNetEvent('ali-weaponmenu:giveAmmo', function(ammoId, quantity)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        -- Use ox_inventory to add the ammo item to the player's inventory
        local success, reason = exports.ox_inventory:AddItem(src, ammoId, quantity)
        if success then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ammoId], 'add')
        else
            print("Failed to add ammo:", reason) -- Debugging statement
        end
    else
        print("Player not found") -- Debug statement
    end
end)

-- Handle custom weapon selection
RegisterNetEvent('ali-weaponmenu:selectCustomWeapon', function(args)
    local src = source
    local weaponId = args[1]
    local player = QBCore.Functions.GetPlayer(src)
    if player then
        local success = exports.ox_inventory:AddItem(src, weaponId, 1)
        if success then
            TriggerClientEvent('QBCore:Notify', src, 'Custom weapon added to your inventory', 'success')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Failed to add custom weapon', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'Failed to find player', 'error')
    end
end)

-- Handle custom component selection
RegisterNetEvent('ali-weaponmenu:selectCustomComponent', function(args)
    local src = source
    local componentId = args[1]
    local player = QBCore.Functions.GetPlayer(src)
    if player then
        local success = exports.ox_inventory:AddItem(src, componentId, 1)
        if success then
            TriggerClientEvent('QBCore:Notify', src, 'Custom component added to your inventory', 'success')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Failed to add custom component', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'Failed to find player', 'error')
    end
end)