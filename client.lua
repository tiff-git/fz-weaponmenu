---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()


local function openWeaponMenu()
    -- Register the main weapon menu context
    lib.registerContext({
        id = 'weapon_menu',
        title = 'Weapon Menu',
        options = {
            {
                title = 'Weapons',
                menu = 'weapon_subcategories',
                icon = 'fas fa-gun'
            },
            {
                title = 'Attachments',
                menu = 'attachment_menu',
                icon = 'fas fa-puzzle-piece'
            },
            {
                title = 'Modifications',
                menu = 'modification_menu',
                icon = 'fas fa-tools'
            }
        }
    })

    -- Register the weapon subcategories context
    lib.registerContext({
        id = 'weapon_subcategories',
        title = 'Weapon Categories',
        menu = 'weapon_menu',
        options = {
            {
                title = 'Pistols',
                menu = 'pistol_menu',
                icon = 'fas fa-gun'
            },
            {
                title = 'SMGs',
                menu = 'smg_menu',
                icon = 'fas fa-gun'
            },
            {
                title = 'Rifles',
                menu = 'rifle_menu',
                icon = 'fas fa-gun'
            },
            {
                title = 'Custom',
                menu = 'custom_menu',
                icon = 'fas fa-star'
            }
        }
    })

    -- Register the pistol subcategory context
    lib.registerContext({
        id = 'pistol_menu',
        title = 'Pistols',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Pistols
    })

    -- Register the SMG subcategory context
    lib.registerContext({
        id = 'smg_menu',
        title = 'SMGs',
        menu = 'weapon_subcategories',
        options = Config.Weapons.SMGs
    })

    -- Register the rifle subcategory context
    lib.registerContext({
        id = 'rifle_menu',
        title = 'Rifles',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Rifles
    })

    -- Register the custom subcategory context
    lib.registerContext({
        id = 'custom_menu',
        title = 'Custom Weapons',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Custom
    })

    -- Register the attachments context
    lib.registerContext({
        id = 'attachment_menu',
        title = 'Attachments',
        menu = 'weapon_menu',
        options = Config.Attachments
    })

    -- Register the modifications context
    lib.registerContext({
        id = 'modification_menu',
        title = 'Modifications',
        menu = 'weapon_menu',
        options = Config.Modifications
    })

    -- Show the main weapon menu context
    lib.showContext('weapon_menu')
end

RegisterCommand('weaponmenu', function()
    openWeaponMenu()
end)

-- Handle weapon selection
RegisterNetEvent('ali-weaponmenu:selectWeapon', function(args)
    local weaponId = args[1]
    print("Weapon selected: " .. weaponId) -- Debug statement
    TriggerServerEvent('ali-weaponmenu:giveWeapon', weaponId)
end)

-- Handle attachment selection
RegisterNetEvent('ali-weaponmenu:selectAttachment', function(args)
    local attachmentId = args[1]
    local playerPed = PlayerPedId()
    local currentWeapon = GetSelectedPedWeapon(playerPed)
    
    if currentWeapon then
        print("Attachment selected: " .. attachmentId .. " for weapon: " .. currentWeapon) -- Debug statement
        TriggerServerEvent('ali-weaponmenu:applyAttachment', currentWeapon, attachmentId)
    else
        print("No weapon in hand") -- Debug statement
    end
end)

-- Handle modification selection
RegisterNetEvent('ali-weaponmenu:selectModification', function(args)
    local modificationId = args[1]
    local playerPed = PlayerPedId()
    local currentWeapon = GetSelectedPedWeapon(playerPed)
    
    if currentWeapon then
        print("Modification selected: " .. modificationId .. " for weapon: " .. currentWeapon) -- Debug statement
        TriggerServerEvent('ali-weaponmenu:applyModification', currentWeapon, modificationId)
    else
        print("No weapon in hand") -- Debug statement
    end
end)

-- Apply infinite ammo
RegisterNetEvent('ali-weaponmenu:applyInfiniteAmmo', function(currentWeapon, enable)
    local playerPed = PlayerPedId()
    if enable then
        SetPedInfiniteAmmo(playerPed, true, currentWeapon)
    else
        SetPedInfiniteAmmo(playerPed, false, currentWeapon)
    end
end)

-- Apply reduced recoil
RegisterNetEvent('ali-weaponmenu:applyReduceRecoil', function(currentWeapon, enable)
    -- Assuming you have a way to reduce recoil, this is a placeholder
    if enable then
        -- Apply reduced recoil logic here
    else
        -- Revert to normal recoil logic here
    end
end)

-- Apply increased damage
RegisterNetEvent('ali-weaponmenu:applyIncreasedDamage', function(currentWeapon, enable)
    -- Assuming you have a way to increase damage, this is a placeholder
    if enable then
        -- Apply increased damage logic here
    else
        -- Revert to normal damage logic here
    end
end)

-- Apply increased damage
RegisterNetEvent('ali-weaponmenu:applyIncreasedDamage', function(currentWeapon, enable)
    -- Assuming you have a way to increase damage, this is a placeholder
    if enable then
        -- Apply increased damage logic here
    else
        -- Revert to normal damage logic here
    end
end)

-- Apply improved accuracy
RegisterNetEvent('ali-weaponmenu:applyImprovedAccuracy', function(currentWeapon, enable)
    -- Assuming you have a way to improve accuracy, this is a placeholder
    if enable then
        -- Apply improved accuracy logic here
    else
        -- Revert to normal accuracy logic here
    end
end)

-- Apply fire rate
RegisterNetEvent('ali-weaponmenu:applyFireRate', function(currentWeapon, enable)
    -- Assuming you have a way to increase fire rate, this is a placeholder
    if enable then
        -- Apply increased fire rate logic here
    else
        -- Revert to normal fire rate logic here
    end
end)

-- Apply armor piercing
RegisterNetEvent('ali-weaponmenu:applyArmorPiercing', function(currentWeapon, enable)
    -- Assuming you have a way to add armor-piercing capabilities, this is a placeholder
    if enable then
        -- Apply armor-piercing logic here
    else
        -- Revert to normal logic here
    end
end)

-- Apply weapon tints
RegisterNetEvent('ali-weaponmenu:applyWeaponTints', function(currentWeapon, tintIndex)
    -- Assuming you have a way to apply weapon tints, this is a placeholder
    SetPedWeaponTintIndex(PlayerPedId(), currentWeapon, tintIndex)
end)

-- Function to open a menu for selecting weapon tints
function OpenWeaponTintMenu(currentWeapon)
    local elements = {
        { title = 'Normal', value = 0, icon = 'fas fa-gun', iconColor = 'white' },
        { title = 'Green', value = 1, icon = 'fas fa-gun', iconColor = 'green' },
        { title = 'Gold', value = 2, icon = 'fas fa-gun', iconColor = 'gold' },
        { title = 'Pink', value = 3, icon = 'fas fa-gun', iconColor = 'pink' },
        { title = 'Army', value = 4, icon = 'fas fa-gun', iconColor = 'olive' },
        { title = 'LSPD', value = 5, icon = 'fas fa-gun', iconColor = 'blue' },
        { title = 'Orange', value = 6, icon = 'fas fa-gun', iconColor = 'orange' },
        { title = 'Platinum', value = 7, icon = 'fas fa-gun', iconColor = 'silver' }
    }

    lib.registerContext({
        id = 'weapon_tint_menu',
        title = 'Select Weapon Tint',
        options = elements,
        onSelect = function(option)
            TriggerServerEvent('ali-weaponmenu:applyWeaponTints', currentWeapon, option.value)
        end
    })

    lib.showContext('weapon_tint_menu')
end

-- Event to handle menu selection
RegisterNetEvent('ali-weaponmenu:selectWeaponTint', function(currentWeapon)
    OpenWeaponTintMenu(currentWeapon)
end)