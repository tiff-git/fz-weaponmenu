---@diagnostic disable: unused-local
local QBCore = exports['qb-core']:GetCoreObject()

local function playFrontendSound()
    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end

function openCustomMenu()
    -- Register the custom menu context
    lib.registerContext({
        id = 'custom_menu',
        title = 'Custom',
        menu = 'weapon_menu',
        options = {
            {
                title = 'Custom Weapons',
                menu = 'custom_weapon_menu',
                icon = 'fas fa-gun'
            },
            {
                title = 'Custom Components',
                menu = 'custom_component_menu',
                icon = 'fas fa-cogs'
            }
        }
    })

    -- Register the custom weapon menu context
    local customWeaponOptions = {}
    for _, weapon in ipairs(CustomConfig.Weapons) do
        table.insert(customWeaponOptions, {
            title = weapon.title,
            description = weapon.description, -- Include the description field
            args = weapon.args,
            onSelect = function(args)
                TriggerServerEvent('ali-weaponmenu:selectCustomWeapon', args)
                playFrontendSound()
                lib.showContext('custom_weapon_menu') -- Keep the menu open
            end
        })
    end
    lib.registerContext({
        id = 'custom_weapon_menu',
        title = 'Custom Weapons',
        menu = 'custom_menu',
        options = customWeaponOptions
    })

    -- Register the custom component menu context
    local customComponentOptions = {}
    for _, component in ipairs(CustomConfig.Components) do
        table.insert(customComponentOptions, {
            title = component.title,
            description = component.description, -- Include the description field if available
            args = component.args,
            onSelect = function(args)
                TriggerServerEvent('ali-weaponmenu:selectCustomComponent', args)
                playFrontendSound()
                lib.showContext('custom_component_menu') -- Keep the menu open
            end
        })
    end
    lib.registerContext({
        id = 'custom_component_menu',
        title = 'Custom Components',
        menu = 'custom_menu',
        options = customComponentOptions
    })
end

-- Ensure the custom menu is opened when the main menu is opened
RegisterCommand('custommenu', function()
    openCustomMenu()
    lib.showContext('custom_menu')
end)