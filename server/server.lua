local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ali-weaponmenu:selectWeapon', function(weaponId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
        local success, reason = exports.ox_inventory:AddItem(src, weaponId, 1)
        if success then
            TriggerClientEvent('QBCore:Notify', src, 'You have received a weapon: ' .. weaponId, 'success')
        else
            print("Failed to add weapon:", reason)
        end
    else
        print("Player not found")
    end
end)

RegisterNetEvent('ali-weaponmenu:addComponentToInventory', function(component)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        local success, reason = exports.ox_inventory:AddItem(src, component, 1)
        if success then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[component], 'add')
        else
            print("Failed to add component:", reason)
        end
    else
        print("Player not found")
    end
end)

RegisterNetEvent('ali-weaponmenu:addModificationToInventory', function(modificationId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
        local success, reason = exports.ox_inventory:AddItem(src, modificationId, 1)
        if success then
            TriggerClientEvent('QBCore:Notify', src, 'Modification added to your inventory', 'success')
        else
            print("Failed to add modification:", reason)
        end
    else
        print("Player not found")
    end
end)

RegisterNetEvent('ali-weaponmenu:giveAmmo', function(ammoId, quantity)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        local success, reason = exports.ox_inventory:AddItem(src, ammoId, quantity)
        if success then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ammoId], 'add')
        else
            print("Failed to add ammo:", reason)
        end
    else
        print("Player not found")
    end
end)

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