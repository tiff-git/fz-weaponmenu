---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()

local function fetchWeaponData()
    local weapons = exports['ox_inventory']:Items('weapon')
    if type(weapons) ~= 'table' then
        print("Error: Weapons data is not a table")
        return {}
    end

    local categorizedWeapons = {
        Pistols = {},
        SMGs = {},
        Rifles = {},
        SniperRifles = {},
        Shotguns = {},
        MachineGuns = {},
        HeavyWeapons = {},
        Throwables = {},
        Melee = {},
        Custom = {}
    }

    for _, weapon in pairs(weapons) do
        local category = weapon.category or 'Custom'
        table.insert(categorizedWeapons[category], {
            title = weapon.label,
            id = weapon.name,
            event = 'ali-weaponmenu:selectWeapon',
            args = { weapon.name },
            image = weapon.image or 'default_image_path.png'
        })
    end

    return categorizedWeapons
end

local function openWeaponMenu()
    local weaponData = fetchWeaponData()

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
                title = 'Components',
                menu = 'component_menu',
                icon = 'fas fa-puzzle-piece'
            },
            {
                title = 'Modifications',
                menu = 'modification_menu',
                icon = 'fas fa-tools'
            },
            {
                title = 'Skins',
                menu = 'skin_menu',
                icon = 'fas fa-paint-brush'
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
                title = 'Sniper Rifles',
                menu = 'sniper_rifle_menu',
                icon = 'fas fa-crosshairs'
            },
            {
                title = 'Shotguns',
                menu = 'shotgun_menu',
                icon = 'fas fa-gun'
            },
            {
                title = 'Machine Guns',
                menu = 'machine_gun_menu',
                icon = 'fas fa-gun'
            },
            {
                title = 'Heavy Weapons',
                menu = 'heavy_weapon_menu',
                icon = 'fas fa-bomb'
            },
            {
                title = 'Throwables',
                menu = 'throwable_menu',
                icon = 'fas fa-bomb'
            },
            {
                title = 'Melee',
                menu = 'melee_menu',
                icon = 'fas fa-fist-raised'
            },
            {
                title = 'Custom Weapons',
                menu = 'custom_weapon_menu',
                icon = 'fas fa-gun'
            }
        }
    })

    -- Register the pistol menu context
    lib.registerContext({
        id = 'pistol_menu',
        title = 'Pistols',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Pistols
    })

    -- Register the SMG menu context
    lib.registerContext({
        id = 'smg_menu',
        title = 'SMGs',
        menu = 'weapon_subcategories',
        options = Config.Weapons.SMGs
    })

    -- Register the rifle menu context
    lib.registerContext({
        id = 'rifle_menu',
        title = 'Rifles',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Rifles
    })

    -- Register the sniper rifle menu context
    lib.registerContext({
        id = 'sniper_rifle_menu',
        title = 'Sniper Rifles',
        menu = 'weapon_subcategories',
        options = Config.Weapons.SniperRifles
    })

    -- Register the shotgun menu context
    lib.registerContext({
        id = 'shotgun_menu',
        title = 'Shotguns',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Shotguns
    })

    -- Register the machine gun menu context
    lib.registerContext({
        id = 'machine_gun_menu',
        title = 'Machine Guns',
        menu = 'weapon_subcategories',
        options = Config.Weapons.MachineGuns
    })

    -- Register the heavy weapon menu context
    lib.registerContext({
        id = 'heavy_weapon_menu',
        title = 'Heavy Weapons',
        menu = 'weapon_subcategories',
        options = Config.Weapons.HeavyWeapons
    })

    -- Register the throwable menu context
    lib.registerContext({
        id = 'throwable_menu',
        title = 'Throwables',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Throwables
    })

    -- Register the melee menu context
    lib.registerContext({
        id = 'melee_menu',
        title = 'Melee',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Melee
    })

    -- Register the custom weapon menu context
    lib.registerContext({
        id = 'custom_weapon_menu',
        title = 'Custom Weapons',
        menu = 'weapon_subcategories',
        options = Config.Weapons.Custom
    })

    -- Register the component menu context
    lib.registerContext({
        id = 'component_menu',
        title = 'Components',
        menu = 'weapon_menu',
        options = Config.Components
    })

    -- Register the modification menu context
    lib.registerContext({
        id = 'modification_menu',
        title = 'Modifications',
        menu = 'weapon_menu',
        options = Config.Modifications
    })

    -- Register the skin menu context
    lib.registerContext({
        id = 'skin_menu',
        title = 'Weapon Skins',
        menu = 'weapon_menu',
        options = Config.Skins
    })

    lib.showContext('weapon_menu')
end

-- Handle weapon selection
RegisterNetEvent('ali-weaponmenu:selectWeapon', function(args)
    local weaponId = args[1]
    print("Weapon selected: " .. weaponId) -- Debug statement
    TriggerServerEvent('ali-weaponmenu:giveWeapon', weaponId)
end)

-- Handle component selection
RegisterNetEvent('ali-weaponmenu:selectComponent', function(args)
    local componentId = args[1]
    local playerPed = PlayerPedId()
    local weaponHash = GetSelectedPedWeapon(playerPed)

    if weaponHash then
        -- Add the component to the player's inventory
        TriggerServerEvent('ali-weaponmenu:addComponentToInventory', componentId)
        QBCore.Functions.Notify('Component added to your inventory', 'success')
    else
        QBCore.Functions.Notify('No weapon selected', 'error')
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

-- Handle skin selection
RegisterNetEvent('ali-weaponmenu:selectSkin', function(skinId)
    local playerPed = PlayerPedId()
    local weaponHash = GetSelectedPedWeapon(playerPed)

    -- Debugging statement to verify the selected skin ID
    print('Selected skin ID:', skinId)

    if weaponHash then
        -- Trigger server event to add the skin to the player's inventory
        TriggerServerEvent('ali-weaponmenu:addSkinToInventory', skinId)

        -- Notify the player that the skin has been added to their inventory
        QBCore.Functions.Notify('Skin added to your inventory', 'success')
    else
        -- Notify the player that no weapon is selected
        QBCore.Functions.Notify('No weapon selected', 'error')
    end
end)

RegisterCommand('weaponmenu', function()
    openWeaponMenu()
end)