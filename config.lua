Config = {}

Config.Weapons = {
    Pistols = {
        { title = 'Pistol', id = 'weapon_pistol', event = 'ali-weaponmenu:selectWeapon', args = { 'weapon_pistol' } },
        { title = 'Combat Pistol', id = 'weapon_combatpistol', event = 'ali-weaponmenu:selectWeapon', args = { 'weapon_combatpistol' } }
    },
    SMGs = {
        { title = 'SMG', id = 'weapon_smg', event = 'ali-weaponmenu:selectWeapon', args = { 'weapon_smg' } }
    },
    Rifles = {
        { title = 'Assault Rifle', id = 'weapon_assaultrifle', event = 'ali-weaponmenu:selectWeapon', args = { 'weapon_assaultrifle' } },
        { title = 'Sniper Rifle', id = 'weapon_sniperrifle', event = 'ali-weaponmenu:selectWeapon', args = { 'weapon_sniperrifle' } }
    },
    Custom = {
        { title = 'Custom Weapon 1', id = 'weapon_custom1', event = 'ali-weaponmenu:selectWeapon', args = { 'weapon_custom1' } },
        { title = 'Custom Weapon 2', id = 'weapon_custom2', event = 'ali-weaponmenu:selectWeapon', args = { 'weapon_custom2' } }
    }
}

Config.Attachments = {
    -- Suppressors
    { title = 'Suppressor', id = 'suppressor', event = 'ali-weaponmenu:selectAttachment', args = { 'suppressor' }, icon = 'fas fa-volume-mute' },
    { title = 'Flash Suppressor', id = 'flash_suppressor', event = 'ali-weaponmenu:selectAttachment', args = { 'flash_suppressor' }, icon = 'fas fa-bolt' },

    -- Magazines
    { title = 'Extended Mag', id = 'extended_mag', event = 'ali-weaponmenu:selectAttachment', args = { 'extended_mag' }, icon = 'fas fa-ellipsis-h' },
    { title = 'Drum Mag', id = 'drum_mag', event = 'ali-weaponmenu:selectAttachment', args = { 'drum_mag' }, icon = 'fas fa-drum' },

    -- Scopes and Sights
    { title = 'Scope', id = 'scope', event = 'ali-weaponmenu:selectAttachment', args = { 'scope' }, icon = 'fas fa-binoculars' },
    { title = 'Holographic Sight', id = 'holo_sight', event = 'ali-weaponmenu:selectAttachment', args = { 'holo_sight' }, icon = 'fas fa-eye' },
    { title = 'Thermal Scope', id = 'thermal_scope', event = 'ali-weaponmenu:selectAttachment', args = { 'thermal_scope' }, icon = 'fas fa-thermometer' },
    { title = 'Night Vision Scope', id = 'night_vision_scope', event = 'ali-weaponmenu:selectAttachment', args = { 'night_vision_scope' }, icon = 'fas fa-eye-slash' },
    { title = 'Holographic Scope', id = 'holo_scope', event = 'ali-weaponmenu:selectAttachment', args = { 'holo_scope' }, icon = 'fas fa-eye' },
    { title = 'Red Dot Sight', id = 'red_dot_sight', event = 'ali-weaponmenu:selectAttachment', args = { 'red_dot_sight' }, icon = 'fas fa-dot-circle' },

    -- Flashlights and Lasers
    { title = 'Flashlight', id = 'flashlight', event = 'ali-weaponmenu:selectAttachment', args = { 'flashlight' }, icon = 'fas fa-lightbulb' },
    { title = 'Laser Sight', id = 'laser_sight', event = 'ali-weaponmenu:selectAttachment', args = { 'laser_sight' }, icon = 'fas fa-dot-circle' },

    -- Grips
    { title = 'Grip', id = 'grip', event = 'ali-weaponmenu:selectAttachment', args = { 'grip' }, icon = 'fas fa-hand-rock' },
    { title = 'Foregrip', id = 'foregrip', event = 'ali-weaponmenu:selectAttachment', args = { 'foregrip' }, icon = 'fas fa-hand-holding' },
    { title = 'Angled Grip', id = 'angled_grip', event = 'ali-weaponmenu:selectAttachment', args = { 'angled_grip' }, icon = 'fas fa-hand-point-up' },

    -- Stocks
    { title = 'Stock', id = 'stock', event = 'ali-weaponmenu:selectAttachment', args = { 'stock' }, icon = 'fas fa-grip-lines' },
    { title = 'Folded Stock', id = 'folded_stock', event = 'ali-weaponmenu:selectAttachment', args = { 'folded_stock' }, icon = 'fas fa-compress-arrows-alt' },

    -- Barrels
    { title = 'Extended Barrel', id = 'extended_barrel', event = 'ali-weaponmenu:selectAttachment', args = { 'extended_barrel' }, icon = 'fas fa-long-arrow-alt-right' },
    { title = 'Short Barrel', id = 'short_barrel', event = 'ali-weaponmenu:selectAttachment', args = { 'short_barrel' }, icon = 'fas fa-long-arrow-alt-left' },
    { title = 'Heavy Barrel', id = 'heavy_barrel', event = 'ali-weaponmenu:selectAttachment', args = { 'heavy_barrel' }, icon = 'fas fa-weight-hanging' },

    -- Miscellaneous
    { title = 'Weapon Skin', id = 'weapon_skin', event = 'ali-weaponmenu:selectAttachment', args = { 'weapon_skin' }, icon = 'fas fa-paint-brush' }
}

Config.Modifications = {
    { title = 'Infinite Ammo', id = 'infinite_ammo', event = 'ali-weaponmenu:selectModification', args = { 'infinite_ammo' }, icon = 'fas fa-infinity' },
    { title = 'Reduce Recoil', id = 'reduce_recoil', event = 'ali-weaponmenu:selectModification', args = { 'reduce_recoil' }, icon = 'fas fa-compress-arrows-alt' },
    { title = 'Increased Damage', id = 'increased_damage', event = 'ali-weaponmenu:selectModification', args = { 'increased_damage' }, icon = 'fas fa-bomb' },
    { title = 'Faster Reload', id = 'faster_reload', event = 'ali-weaponmenu:selectModification', args = { 'faster_reload' }, icon = 'fas fa-tachometer-alt' },
    { title = 'Improved Accuracy', id = 'improved_accuracy', event = 'ali-weaponmenu:selectModification', args = { 'improved_accuracy' }, icon = 'fas fa-crosshairs' },
    { title = 'Fire Rate', id = 'fire_rate', event = 'ali-weaponmenu:selectModification', args = { 'fire_rate' }, icon = 'fas fa-bolt' },
    { title = 'Armor Piercing', id = 'armor_piercing', event = 'ali-weaponmenu:selectModification', args = { 'armor_piercing' }, icon = 'fas fa-shield-alt' },
    { title = 'Weapon Tints', id = 'weapon_tints', event = 'ali-weaponmenu:selectModification', args = { 'weapon_tints' }, icon = 'fas fa-palette' }
}