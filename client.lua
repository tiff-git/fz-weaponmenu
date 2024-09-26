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

local function playFrontendSound()
    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
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
                title = 'Ammo',
                menu = 'ammo_menu',
                icon = 'fas fa-boxes'
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

    -- Register the ammo menu context
    lib.registerContext({
        id = 'ammo_menu',
        title = 'Ammo',
        menu = 'weapon_menu',
        options = Config.Ammo
    })

    lib.showContext('weapon_menu')
end

-- Handle weapon selection
RegisterNetEvent('ali-weaponmenu:selectWeapon', function(args)
    local weaponId = args[1]
    print("Weapon selected: " .. weaponId) -- Debug statement
    TriggerServerEvent('ali-weaponmenu:giveWeapon', weaponId)
    playFrontendSound()
    -- Keep the menu open
    lib.showContext('weapon_subcategories')
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
    playFrontendSound()
    -- Keep the menu open
    lib.showContext('component_menu')
end)

-- Handle modification selection
RegisterNetEvent('ali-weaponmenu:selectModification', function(args)
    local modificationId = args[1]
    local playerPed = PlayerPedId()
    local currentWeapon = GetSelectedPedWeapon(playerPed)
    
    if currentWeapon then
        print("Modification selected: " .. modificationId .. " for weapon: " .. currentWeapon) -- Debug statement
        if modificationId == 'infinite_ammo' then
            SetPedInfiniteAmmoClip(playerPed, true)
            QBCore.Functions.Notify('Modification applied: ' .. modificationId, 'success')
        end
    else
        QBCore.Functions.Notify('No weapon in hand', 'error')
    end
    playFrontendSound()
    lib.showContext('modification_menu')
end)

-- Handle ammo selection
RegisterNetEvent('ali-weaponmenu:selectAmmo', function(args)
    local ammoId = args[1]
    print("Ammo selected: " .. ammoId) -- Debug statement
    TriggerServerEvent('ali-weaponmenu:addAmmoToInventory', ammoId)
    QBCore.Functions.Notify('Ammo added to your inventory', 'success')
    playFrontendSound()
    -- Keep the menu open
    lib.showContext('ammo_menu')
end)

RegisterCommand('weaponmenu', function()
    openWeaponMenu()
end)