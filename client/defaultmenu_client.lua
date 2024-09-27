---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()

local function playFrontendSound()
    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end

local function openSearchDialog()
    local input = lib.inputDialog('Search Items', {
        { type = 'input', label = 'Search', placeholder = 'Enter item name...', required = true }
    })

    if not input then return end

    local searchQuery = input[1]:lower()
    local searchResults = {}

    local function addSearchResults(items, itemType)
        for _, item in ipairs(items) do
            if item.title:lower():find(searchQuery) then
                table.insert(searchResults, {
                    title = item.title,
                    description = item.description,
                    args = { item.id, itemType },
                    onSelect = function(args)
                        if itemType == 'modification' then
                            TriggerEvent('ali-weaponmenu:applyModification', args[1])
                        else
                            TriggerServerEvent('ali-weaponmenu:selectItem', args[1], args[2])
                        end
                        playFrontendSound()
                        lib.showContext('search_results_menu') -- Keep the menu open
                    end
                })
            end
        end
    end

    -- Search in Config.Weapons
    if Config.Weapons.Pistols then
        addSearchResults(Config.Weapons.Pistols, 'weapon')
    end

    if Config.Weapons.SMGs then
        addSearchResults(Config.Weapons.SMGs, 'weapon')
    end

    if Config.Weapons.Rifles then
        addSearchResults(Config.Weapons.Rifles, 'weapon')
    end

    if Config.Weapons.SniperRifles then
        addSearchResults(Config.Weapons.SniperRifles, 'weapon')
    end

    if Config.Weapons.Shotguns then
        addSearchResults(Config.Weapons.Shotguns, 'weapon')
    end

    if Config.Weapons.MachineGuns then
        addSearchResults(Config.Weapons.MachineGuns, 'weapon')
    end

    if Config.Weapons.HeavyWeapons then
        addSearchResults(Config.Weapons.HeavyWeapons, 'weapon')
    end

    if Config.Weapons.Throwables then
        addSearchResults(Config.Weapons.Throwables, 'weapon')
    end

    if Config.Weapons.Melee then
        addSearchResults(Config.Weapons.Melee, 'weapon')
    end

    -- Search in Config.Ammo
    if Config.Ammo then
        addSearchResults(Config.Ammo, 'ammo')
    end

    -- Search in Config.Components
    if Config.Components then
        addSearchResults(Config.Components, 'component')
    end

    -- Search in Config.Modifications
    if Config.Modifications then
        addSearchResults(Config.Modifications, 'modification')
    end

    -- Search in CustomConfig.Weapons
    if CustomConfig.Weapons then
        addSearchResults(CustomConfig.Weapons, 'weapon')
    end

    -- Search in CustomConfig.Components
    if CustomConfig.Components then
        addSearchResults(CustomConfig.Components, 'component')
    end

    lib.registerContext({
        id = 'search_results_menu',
        title = 'Search Results',
        menu = 'weapon_menu',
        options = searchResults
    })

    lib.showContext('search_results_menu')
end

local function openWeaponMenu()
    -- Register the main weapon menu context
    lib.registerContext({
        id = 'weapon_menu',
        title = 'Weapon Menu',
        options = {
            { title = 'Weapons', menu = 'weapon_subcategories', icon = 'fas fa-gun' },
            { title = 'Components', menu = 'component_menu', icon = 'fas fa-puzzle-piece' },
            { title = 'Modifications', menu = 'modification_menu', icon = 'fas fa-tools' },
            { title = 'Ammo', menu = 'ammo_menu', icon = 'fas fa-boxes' },
            { title = 'Custom', menu = 'custom_menu', icon = 'fas fa-star' },
            { title = 'Search', onSelect = function() openSearchDialog() end, icon = 'fas fa-search' }
        }
    })

    -- Register the weapon subcategories context
    lib.registerContext({
        id = 'weapon_subcategories',
        title = 'Weapon Categories',
        menu = 'weapon_menu',
        options = {
            { title = 'Pistols', menu = 'pistol_menu', icon = 'fas fa-gun' },
            { title = 'SMGs', menu = 'smg_menu', icon = 'fas fa-gun' },
            { title = 'Rifles', menu = 'rifle_menu', icon = 'fas fa-gun' },
            { title = 'Sniper Rifles', menu = 'sniper_rifle_menu', icon = 'fas fa-crosshairs' },
            { title = 'Shotguns', menu = 'shotgun_menu', icon = 'fas fa-gun' },
            { title = 'Machine Guns', menu = 'machine_gun_menu', icon = 'fas fa-gun' },
            { title = 'Heavy Weapons', menu = 'heavy_weapon_menu', icon = 'fas fa-bomb' },
            { title = 'Throwables', menu = 'throwable_menu', icon = 'fas fa-bomb' },
            { title = 'Melee', menu = 'melee_menu', icon = 'fas fa-fist-raised' }
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

    -- Register the component menu context
    local componentOptions = {}
    for _, component in ipairs(Config.Components) do
        table.insert(componentOptions, {
            title = component.title,
            args = component.args,
            icon = component.icon,
            description = component.description,
            onSelect = function(args)
                TriggerEvent('ali-weaponmenu:selectComponent', args)
            end
        })
    end
    lib.registerContext({
        id = 'component_menu',
        title = 'Components',
        menu = 'weapon_menu',
        options = componentOptions
    })

    -- Register the modification menu context
    local modificationOptions = {}
    for _, modification in ipairs(Config.Modifications) do
        table.insert(modificationOptions, {
            title = modification.title,
            args = modification.id,  -- Ensure the correct argument is passed
            icon = modification.icon,
            description = modification.description,
            onSelect = function(args)
                TriggerServerEvent('ali-weaponmenu:applyModification', args)
            end
        })
    end

    lib.registerContext({
        id = 'modification_menu',
        title = 'Modifications',
        menu = 'weapon_menu',
        options = modificationOptions
    })

    -- Register the ammo menu context
    local ammoOptions = {}
    for _, ammo in ipairs(Config.Ammo) do
        table.insert(ammoOptions, {
            title = ammo.title,
            args = ammo.args,
            icon = ammo.icon,
            description = ammo.description,
            onSelect = function(args)
                TriggerEvent('ali-weaponmenu:selectAmmo', args)
                playFrontendSound()
            end
        })
    end
    lib.registerContext({
        id = 'ammo_menu',
        title = 'Ammo',
        menu = 'weapon_menu',
        options = ammoOptions
    })

    -- Register the custom menu context
    openCustomMenu()

    lib.showContext('weapon_menu')
end

-- Update the weapon menu options to trigger the event
for categoryName, category in pairs(Config.Weapons) do
    for _, weapon in ipairs(category) do
        weapon.onSelect = function(args)
            TriggerEvent('ali-weaponmenu:selectWeapon', args, categoryName)
        end
    end
end

-- Handle component selection
RegisterNetEvent('ali-weaponmenu:selectComponent', function(args)
    local componentId = args[1]
    local playerPed = PlayerPedId()
    local weaponHash = GetSelectedPedWeapon(playerPed)
    if weaponHash then
        TriggerServerEvent('ali-weaponmenu:addComponentToInventory', componentId)
        GiveWeaponComponentToPed(playerPed, weaponHash, GetHashKey(componentId))
        QBCore.Functions.Notify('Component added to your inventory', 'success')
        playFrontendSound()
        lib.showContext('component_menu')
    else
        QBCore.Functions.Notify('No weapon selected', 'error')
        lib.showContext('component_menu')
    end
end)

-- Handle modification selection
RegisterNetEvent('ali-weaponmenu:selectModification', function(args)
    local modificationId = args[1]
    local playerPed = PlayerPedId()
    local weaponHash = GetSelectedPedWeapon(playerPed)
    if weaponHash then
        TriggerServerEvent('ali-weaponmenu:addModificationToInventory', modificationId)
        GiveWeaponComponentToPed(playerPed, weaponHash, GetHashKey(modificationId))
        QBCore.Functions.Notify('Modification added to your inventory', 'success')
    else
        QBCore.Functions.Notify('No weapon selected', 'error')
    end
    playFrontendSound()
    lib.showContext('modification_menu')
end)

-- Handle ammo selection
RegisterNetEvent('ali-weaponmenu:selectAmmo', function(args)
    local ammoType = args[1]
    local playerPed = PlayerPedId()
    if ammoType and playerPed then
        TriggerServerEvent('ali-weaponmenu:giveAmmo', ammoType, 10) -- Give 10 units of ammo
        QBCore.Functions.Notify('Ammo added to your inventory', 'success')
        playFrontendSound()
        lib.showContext('ammo_menu')
    else
        QBCore.Functions.Notify('Failed to add ammo', 'error')
        lib.showContext('ammo_menu')
    end
end)

-- Handle default weapon selection
RegisterNetEvent('ali-weaponmenu:selectWeapon', function(args)
    local weaponId = args[1]
    local playerPed = PlayerPedId()
    TriggerServerEvent('ali-weaponmenu:selectWeapon', weaponId)
    QBCore.Functions.Notify('Weapon added to your inventory', 'success')
    playFrontendSound()
    lib.showContext('weapon_menu')
end)

RegisterCommand('weaponmenu', function()
    openWeaponMenu()
end)