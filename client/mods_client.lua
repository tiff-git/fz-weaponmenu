---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()

local function playFrontendSound()
    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end

local function applyInfiniteAmmo()
    local playerPed = PlayerPedId()
    local weaponHash = GetSelectedPedWeapon(playerPed)

    if weaponHash == `WEAPON_UNARMED` then
        TriggerEvent('QBCore:Notify', 'You need to be holding a weapon to apply infinite ammo', 'error')
        return
    end

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
    
    -- Play frontend sound
    playFrontendSound()
    
    TriggerEvent('QBCore:Notify', 'Max ammo applied', 'success')
end

local function applyModification(modificationId)
    if modificationId == 'infinite_ammo' then
        applyInfiniteAmmo()
    else
        TriggerEvent('QBCore:Notify', 'Unknown modification', 'error')
    end
end

RegisterCommand('maxammo', function(source, args, rawCommand)
    applyInfiniteAmmo()
end, false)

RegisterNetEvent('fz-weaponmenu:applyModification', function(modificationId)
    applyModification(modificationId)
end)