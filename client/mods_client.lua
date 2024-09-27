---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()

local function applyModification(modificationId)
    local playerPed = PlayerPedId()
    local weaponHash = GetSelectedPedWeapon(playerPed)

    if weaponHash == `WEAPON_UNARMED` then
        TriggerEvent('QBCore:Notify', 'You need to be holding a weapon to apply modifications', 'error')
        return
    end

    if modificationId == 'infinite_ammo' then
        -- Logic for applying infinite ammo
        local maxAmmo = 9999
        local clipSize = GetMaxAmmoInClip(playerPed, weaponHash, true)
        
        -- Ensure clipSize is a valid number
        if type(clipSize) ~= 'number' then
            TriggerEvent('QBCore:Notify', 'Failed to retrieve clip size', 'error')
            return
        end
        
        -- Set the initial total ammo
        SetPedAmmo(playerPed, weaponHash, maxAmmo)
        
        -- Continuously refill ammo
        CreateThread(function()
            while true do
                Wait(50)
                local currentAmmo = GetAmmoInPedWeapon(playerPed, weaponHash)
                local currentClipAmmo = GetAmmoInClip(playerPed, weaponHash)
                
                -- Ensure currentClipAmmo is a valid number
                if type(currentClipAmmo) ~= 'number' then
                    TriggerEvent('QBCore:Notify', 'Failed to retrieve clip ammo', 'error')
                    return
                end
                
                -- Refill the clip if it's not full
                if currentClipAmmo < clipSize then
                    SetAmmoInClip(playerPed, weaponHash, clipSize)
                end
                
                -- Refill the total ammo if it's below a threshold
                if currentAmmo < clipSize * 2 then
                    SetPedAmmo(playerPed, weaponHash, maxAmmo)
                end
            end
        end)
        
        TriggerEvent('QBCore:Notify', 'Infinite ammo applied', 'success')
    else
        TriggerEvent('QBCore:Notify', 'Unknown modification', 'error')
    end
end

RegisterNetEvent('ali-weaponmenu:applyModification', function(modificationId)
    applyModification(modificationId)
end)