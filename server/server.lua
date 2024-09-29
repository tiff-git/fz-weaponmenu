local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('fz-weaponmenu:selectWeapon', function(weaponId)
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

RegisterNetEvent('fz-weaponmenu:addComponentToInventory', function(component)
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

RegisterNetEvent('fz-weaponmenu:applyModification', function(modificationId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        TriggerClientEvent('fz-weaponmenu:applyModification', src, modificationId)
    else
        print("Player not found")
    end
end)

RegisterNetEvent('fz-weaponmenu:giveAmmo', function(ammoId, quantity)
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

RegisterNetEvent('fz-weaponmenu:selectCustomWeapon', function(args)
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

RegisterNetEvent('fz-weaponmenu:selectCustomComponent', function(args)
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

RegisterNetEvent('fz-weaponmenu:selectItem', function(itemId, itemType)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
        if itemType == 'modification' then
            -- Directly apply the modification without adding to inventory
            TriggerClientEvent('fz-weaponmenu:applyModification', src, itemId)
        else
            local success, reason = exports.ox_inventory:AddItem(src, itemId, 1)
            if success then
                if itemType == 'weapon' then
                    TriggerClientEvent('QBCore:Notify', src, 'You have received a weapon: ' .. itemId, 'success')
                elseif itemType == 'ammo' then
                    TriggerClientEvent('QBCore:Notify', src, 'You have received ammo: ' .. itemId, 'success')
                elseif itemType == 'component' then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemId], 'add')
                end
            else
                print("Failed to add item:", reason)
            end
        end
    else
        print("Player not found")
    end
end)