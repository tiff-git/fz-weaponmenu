Config = {}

Config.Weapons = {
    Pistols = {
        { title = 'Pistol', id = 'weapon_pistol', args = { 'weapon_pistol' }, description = 'Uses: 9mm' },
        { title = 'Combat Pistol', id = 'weapon_combatpistol', args = { 'weapon_combatpistol' }, description = 'Uses: 9mm' },
        { title = 'AP Pistol', id = 'weapon_appistol', args = { 'weapon_appistol' }, description = 'Uses: 9mm' },
        { title = 'Stun Gun', id = 'weapon_stungun', args = { 'weapon_stungun' }, description = 'Uses: Electric Charge' },
        { title = 'Pistol .50', id = 'weapon_pistol50', args = { 'weapon_pistol50' }, description = 'Uses: .50 AE' },
        { title = 'SNS Pistol', id = 'weapon_snspistol', args = { 'weapon_snspistol' }, description = 'Uses: 9mm' },
        { title = 'Heavy Pistol', id = 'weapon_heavypistol', args = { 'weapon_heavypistol' }, description = 'Uses: .45 ACP' },
        { title = 'Vintage Pistol', id = 'weapon_vintagepistol', args = { 'weapon_vintagepistol' }, description = 'Uses: 9mm' },
        { title = 'Flare Gun', id = 'weapon_flaregun', args = { 'weapon_flaregun' }, description = 'Uses: Flare round' },
        { title = 'Marksman Pistol', id = 'weapon_marksmanpistol', args = { 'weapon_marksmanpistol' }, description = 'Uses: .22 Long Rifle' },
        { title = 'Revolver', id = 'weapon_revolver', args = { 'weapon_revolver' }, description = 'Uses: .44 Magnum' },
        { title = 'Double Action Revolver', id = 'weapon_doubleaction', args = { 'weapon_doubleaction' }, description = 'Uses: .38 LC' },
        { title = 'Ceramic Pistol', id = 'weapon_ceramicpistol', args = { 'weapon_ceramicpistol' }, description = 'Uses: 9mm' },
        { title = 'Navy Revolver', id = 'weapon_navyrevolver', args = { 'weapon_navyrevolver' }, description = 'Uses: .44 Magnum' },
        { title = 'Perico Pistol', id = 'weapon_gadgetpistol', args = { 'weapon_gadgetpistol' }, description = 'Uses: .38 LC' },
        { title = 'Service Carbine', id = 'weapon_servicecarbine', args = { 'weapon_servicecarbine' }, description = 'Uses: 5.56x45' }
    },
    SMGs = {
        { title = 'SMG', id = 'weapon_smg', args = { 'weapon_smg' }, description = 'Uses: 9mm' },
        { title = 'Micro SMG', id = 'weapon_microsmg', args = { 'weapon_microsmg' }, description = 'Uses: 9mm' },
        { title = 'Assault SMG', id = 'weapon_assaultsmg', args = { 'weapon_assaultsmg' }, description = 'Uses: 9mm' },
        { title = 'Combat PDW', id = 'weapon_combatpdw', args = { 'weapon_combatpdw' }, description = 'Uses: 9mm' },
        { title = 'Machine Pistol', id = 'weapon_machinepistol', args = { 'weapon_machinepistol' }, description = 'Uses: 9mm' },
        { title = 'Mini SMG', id = 'weapon_minismg', args = { 'weapon_minismg' }, description = 'Uses: 9mm' },
        { title = 'Unholy Hellbringer', id = 'weapon_raycarbine', args = { 'weapon_raycarbine' }, description = 'Uses: Laser charge' }
    },
    Rifles = {
        { title = 'Assault Rifle', id = 'weapon_assaultrifle', args = { 'weapon_assaultrifle' }, description = 'Uses: 7.62x39' },
        { title = 'Carbine Rifle', id = 'weapon_carbinerifle', args = { 'weapon_carbinerifle' }, description = 'Uses: 5.56x45' },
        { title = 'Advanced Rifle', id = 'weapon_advancedrifle', args = { 'weapon_advancedrifle' }, description = 'Uses: 5.56x45' },
        { title = 'Special Carbine', id = 'weapon_specialcarbine', args = { 'weapon_specialcarbine' }, description = 'Uses: 7.62x39' },
        { title = 'Bullpup Rifle', id = 'weapon_bullpuprifle', args = { 'weapon_bullpuprifle' }, description = 'Uses: 5.56x45' },
        { title = 'Compact Rifle', id = 'weapon_compactrifle', args = { 'weapon_compactrifle' }, description = 'Uses: 7.62x39' },
        { title = 'Military Rifle', id = 'weapon_militaryrifle', args = { 'weapon_militaryrifle' }, description = 'Uses: 5.56x45' },
        { title = 'Heavy Rifle', id = 'weapon_heavyrifle', args = { 'weapon_heavyrifle' }, description = 'Uses: 7.62x39' },
        { title = 'Tactical Rifle', id = 'weapon_tacticalrifle', args = { 'weapon_tacticalrifle' }, description = 'Uses: 5.56x45' }
    },
    SniperRifles = {
        { title = 'Sniper Rifle', id = 'weapon_sniperrifle', args = { 'weapon_sniperrifle' }, description = 'Uses: 7.62x51' },
        { title = 'Heavy Sniper', id = 'weapon_heavysniper', args = { 'weapon_heavysniper' }, description = 'Uses: .50 BMG' },
        { title = 'Marksman Rifle', id = 'weapon_marksmanrifle', args = { 'weapon_marksmanrifle' }, description = 'Uses: 7.62x51' },
        { title = 'Precision Rifle', id = 'weapon_precisionrifle', args = { 'weapon_precisionrifle' }, description = 'Uses: 7.62x51' }
    },
    Shotguns = {
        { title = 'Pump Shotgun', id = 'weapon_pumpshotgun', args = { 'weapon_pumpshotgun' }, description = 'Uses: 12 Gauge' },
        { title = 'Sawed-Off Shotgun', id = 'weapon_sawnoffshotgun', args = { 'weapon_sawnoffshotgun' }, description = 'Uses: 12 Gauge' },
        { title = 'Bullpup Shotgun', id = 'weapon_bullpupshotgun', args = { 'weapon_bullpupshotgun' }, description = 'Uses: 12 Gauge' },
        { title = 'Assault Shotgun', id = 'weapon_assaultshotgun', args = { 'weapon_assaultshotgun' }, description = 'Uses: 12 Gauge' },
        { title = 'Musket', id = 'weapon_musket', args = { 'weapon_musket' }, description = 'Uses: .50 Ball' },
        { title = 'Heavy Shotgun', id = 'weapon_heavyshotgun', args = { 'weapon_heavyshotgun' }, description = 'Uses: 12 Gauge' },
        { title = 'Double Barrel Shotgun', id = 'weapon_dbshotgun', args = { 'weapon_dbshotgun' }, description = 'Uses: 12 Gauge' },
        { title = 'Sweeper Shotgun', id = 'weapon_autoshotgun', args = { 'weapon_autoshotgun' }, description = 'Uses: 12 Gauge' }
    },
    MachineGuns = {
        { title = 'MG', id = 'weapon_mg', args = { 'weapon_mg' }, description = 'Uses: 7.62x51' },
        { title = 'Combat MG', id = 'weapon_combatmg', args = { 'weapon_combatmg' }, description = 'Uses: 7.62x51' },
        { title = 'Gusenberg Sweeper', id = 'weapon_gusenberg', args = { 'weapon_gusenberg' }, description = 'Uses: .45 ACP' }
    },
    HeavyWeapons = {
        { title = 'RPG', id = 'weapon_rpg', args = { 'weapon_rpg' }, description = 'Uses: Rocket' },
        { title = 'Grenade Launcher', id = 'weapon_grenadelauncher', args = { 'weapon_grenadelauncher' }, description = 'Uses: 40mm Explosive' },
        { title = 'Minigun', id = 'weapon_minigun', args = { 'weapon_minigun' }, description = 'Uses: 7.62x51' },
        { title = 'Firework Launcher', id = 'weapon_firework', args = { 'weapon_firework' }, description = 'Uses: Firework' },
        { title = 'Railgun', id = 'weapon_railgun', args = { 'weapon_railgun' }, description = 'Uses: Railgun charge' },
        { title = 'Homing Launcher', id = 'weapon_hominglauncher', args = { 'weapon_hominglauncher' }, description = 'Uses: Rocket' },
        { title = 'Compact Grenade Launcher', id = 'weapon_compactlauncher', args = { 'weapon_compactlauncher' }, description = 'Uses: 40mm Explosive' },
        { title = 'Widowmaker', id = 'weapon_rayminigun', args = { 'weapon_rayminigun' }, description = 'Uses: Laser charge' }
    },
    Throwables = {
        { title = 'Grenade', id = 'weapon_grenade', args = { 'weapon_grenade' }, description = 'Uses: Grenade' },
        { title = 'Sticky Bomb', id = 'weapon_stickybomb', args = { 'weapon_stickybomb' }, description = 'Uses: Sticky Bomb' },
        { title = 'Proximity Mine', id = 'weapon_proxmine', args = { 'weapon_proxmine' }, description = 'Uses: Proximity Mine' },
        { title = 'BZ Gas', id = 'weapon_bzgas', args = { 'weapon_bzgas' }, description = 'Uses: BZ Gas' },
        { title = 'Molotov', id = 'weapon_molotov', args = { 'weapon_molotov' }, description = 'Uses: Molotov' },
        { title = 'Fire Extinguisher', id = 'weapon_fireextinguisher', args = { 'weapon_fireextinguisher' }, description = 'Uses: Fire Extinguisher' },
        { title = 'Petrol Can', id = 'weapon_petrolcan', args = { 'weapon_petrolcan' }, description = 'Uses: Petrol' },
        { title = 'Flare', id = 'weapon_flare', args = { 'weapon_flare' }, description = 'Uses: Flare' },
        { title = 'Ball', id = 'weapon_ball', args = { 'weapon_ball' }, description = 'Uses: Ball' },
        { title = 'Snowball', id = 'weapon_snowball', args = { 'weapon_snowball' }, description = 'Uses: Snowball' },
        { title = 'Smoke Grenade', id = 'weapon_smokegrenade', args = { 'weapon_smokegrenade' }, description = 'Uses: Smoke Grenade' },
        { title = 'Pipe Bomb', id = 'weapon_pipebomb', args = { 'weapon_pipebomb' }, description = 'Uses: Pipe Bomb' },
        { title = 'Parachute', id = 'gadget_parachute', args = { 'gadget_parachute' }, description = 'Uses: Parachute' }
    },
    Melee = {
        { title = 'Knife', id = 'weapon_knife', args = { 'weapon_knife' }, description = 'Melee Weapon' },
        { title = 'Nightstick', id = 'weapon_nightstick', args = { 'weapon_nightstick' }, description = 'Melee Weapon' },
        { title = 'Hammer', id = 'weapon_hammer', args = { 'weapon_hammer' }, description = 'Melee Weapon' },
        { title = 'Bat', id = 'weapon_bat', args = { 'weapon_bat' }, description = 'Melee Weapon' },
        { title = 'Crowbar', id = 'weapon_crowbar', args = { 'weapon_crowbar' }, description = 'Melee Weapon' },
        { title = 'Golf Club', id = 'weapon_golfclub', args = { 'weapon_golfclub' }, description = 'Melee Weapon' },
        { title = 'Bottle', id = 'weapon_bottle', args = { 'weapon_bottle' }, description = 'Melee Weapon' },
        { title = 'Dagger', id = 'weapon_dagger', args = { 'weapon_dagger' }, description = 'Melee Weapon' },
        { title = 'Hatchet', id = 'weapon_hatchet', args = { 'weapon_hatchet' }, description = 'Melee Weapon' },
        { title = 'Knuckle Duster', id = 'weapon_knuckle', args = { 'weapon_knuckle' }, description = 'Melee Weapon' },
        { title = 'Machete', id = 'weapon_machete', args = { 'weapon_machete' }, description = 'Melee Weapon' },
        { title = 'Flashlight', id = 'weapon_flashlight', args = { 'weapon_flashlight' }, description = 'Melee Weapon' },
        { title = 'Switchblade', id = 'weapon_switchblade', args = { 'weapon_switchblade' }, description = 'Melee Weapon' },
        { title = 'Pool Cue', id = 'weapon_poolcue', args = { 'weapon_poolcue' }, description = 'Melee Weapon' },
        { title = 'Wrench', id = 'weapon_wrench', args = { 'weapon_wrench' }, description = 'Melee Weapon' },
        { title = 'Battle Axe', id = 'weapon_battleaxe', args = { 'weapon_battleaxe' }, description = 'Melee Weapon' },
        { title = 'Stone Hatchet', id = 'weapon_stone_hatchet', args = { 'weapon_stone_hatchet' }, description = 'Melee Weapon' }
    }
}

Config.Ammo = {
    { title = '.22 Long Rifle', id = 'ammo-22', args = { 'ammo-22' }, description = 'Works on: .22 Caliber Weapons' },
    { title = '.38 LC', id = 'ammo-38', args = { 'ammo-38' }, description = 'Works on: .38 Caliber Weapons' },
    { title = '.44 Magnum', id = 'ammo-44', args = { 'ammo-44' }, description = 'Works on: .44 Caliber Weapons' },
    { title = '.45 ACP', id = 'ammo-45', args = { 'ammo-45' }, description = 'Works on: .45 Caliber Weapons' },
    { title = '.50 AE', id = 'ammo-50', args = { 'ammo-50' }, description = 'Works on: .50 Caliber Weapons' },
    { title = '9mm', id = 'ammo-9', args = { 'ammo-9' }, description = 'Works on: 9mm Caliber Weapons' },
    { title = 'Firework', id = 'ammo-firework', args = { 'ammo-firework' }, description = 'Works on: Firework Launchers' },
    { title = 'Flare round', id = 'ammo-flare', args = { 'ammo-flare' }, description = 'Works on: Flare Guns' },
    { title = '40mm Explosive', id = 'ammo-grenade', args = { 'ammo-grenade' }, description = 'Works on: Grenade Launchers' },
    { title = '.50 BMG', id = 'ammo-heavysniper', args = { 'ammo-heavysniper' }, description = 'Works on: Heavy Sniper Rifles' },
    { title = 'Laser charge', id = 'ammo-laser', args = { 'ammo-laser' }, description = 'Works on: Laser Weapons' },
    { title = '.50 Ball', id = 'ammo-musket', args = { 'ammo-musket' }, description = 'Works on: Muskets' },
    { title = 'Railgun charge', id = 'ammo-railgun', args = { 'ammo-railgun' }, description = 'Works on: Railguns' },
    { title = '5.56x45', id = 'ammo-rifle', args = { 'ammo-rifle' }, description = 'Works on: 5.56x45mm Rifles' },
    { title = '7.62x39', id = 'ammo-rifle2', args = { 'ammo-rifle2' }, description = 'Works on: 7.62x39mm Rifles' },
    { title = 'Rocket', id = 'ammo-rocket', args = { 'ammo-rocket' }, description = 'Works on: Rocket Launchers' },
    { title = '12 Gauge', id = 'ammo-shotgun', args = { 'ammo-shotgun' }, description = 'Works on: Shotguns' },
    { title = '7.62x51', id = 'ammo-sniper', args = { 'ammo-sniper' }, description = 'Works on: Sniper Rifles' },
    { title = 'EMP round', id = 'ammo-emp', args = { 'ammo-emp' }, description = 'Works on: EMP Weapons' }
}

Config.Components = {
    { title = 'Tactical Flashlight', id = 'at_flashlight', args = { 'at_flashlight' }, icon = 'fas fa-lightbulb', description = 'Provides illumination. Works on: Pistols, SMGs, Rifles' },
    { title = 'Suppressor', id = 'at_suppressor_light', args = { 'at_suppressor_light' }, icon = 'fas fa-volume-mute', description = 'Reduces noise. Works on: Light Pistols' },
    { title = 'Tactical Suppressor', id = 'at_suppressor_heavy', args = { 'at_suppressor_heavy' }, icon = 'fas fa-volume-mute', description = 'Reduces noise. Works on: Heavy Pistols, Rifles' },
    { title = 'Grip', id = 'at_grip', args = { 'at_grip' }, icon = 'fas fa-hand-rock', description = 'Improves stability. Works on: SMGs, Rifles, MGs' },
    { title = 'Heavy Barrel', id = 'at_barrel', args = { 'at_barrel' }, icon = 'fas fa-weight-hanging', description = 'Increases accuracy. Works on: Rifles, MGs' },
    { title = 'Extended Pistol Clip', id = 'at_clip_extended_pistol', args = { 'at_clip_extended_pistol' }, icon = 'fas fa-ellipsis-h', description = 'Increases ammo capacity. Works on: Pistols' },
    { title = 'Extended SMG Clip', id = 'at_clip_extended_smg', args = { 'at_clip_extended_smg' }, icon = 'fas fa-ellipsis-h', description = 'Increases ammo capacity. Works on: SMGs' },
    { title = 'Extended Shotgun Clip', id = 'at_clip_extended_shotgun', args = { 'at_clip_extended_shotgun' }, icon = 'fas fa-ellipsis-h', description = 'Increases ammo capacity. Works on: Shotguns' },
    { title = 'Extended Rifle Clip', id = 'at_clip_extended_rifle', args = { 'at_clip_extended_rifle' }, icon = 'fas fa-ellipsis-h', description = 'Increases ammo capacity. Works on: Rifles' },
    { title = 'Extended MG Clip', id = 'at_clip_extended_mg', args = { 'at_clip_extended_mg' }, icon = 'fas fa-ellipsis-h', description = 'Increases ammo capacity. Works on: MGs' },
    { title = 'Extended Sniper Clip', id = 'at_clip_extended_sniper', args = { 'at_clip_extended_sniper' }, icon = 'fas fa-ellipsis-h', description = 'Increases ammo capacity. Works on: Sniper Rifle' },
    { title = 'SMG Drum', id = 'at_clip_drum_smg', args = { 'at_clip_drum_smg' }, icon = 'fas fa-drum', description = 'Increases ammo capacity significantly. Works on: SMGs' },
    { title = 'Shotgun Drum', id = 'at_clip_drum_shotgun', args = { 'at_clip_drum_shotgun' }, icon = 'fas fa-drum', description = 'Increases ammo capacity significantly. Works on: Shotguns' },
    { title = 'Rifle Drum', id = 'at_clip_drum_rifle', args = { 'at_clip_drum_rifle' }, icon = 'fas fa-drum', description = 'Increases ammo capacity significantly. Works on: Rifles' },
    { title = 'Compensator', id = 'at_compensator', args = { 'at_compensator' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Pistols, SMGs, Rifles' },
    { title = 'Macro Scope', id = 'at_scope_macro', args = { 'at_scope_macro' }, icon = 'fas fa-binoculars', description = 'Provides zoom. Works on: Pistols, SMGs' },
    { title = 'Small Scope', id = 'at_scope_small', args = { 'at_scope_small' }, icon = 'fas fa-binoculars', description = 'Provides zoom. Works on: Pistols, SMGs, Rifles' },
    { title = 'Medium Scope', id = 'at_scope_medium', args = { 'at_scope_medium' }, icon = 'fas fa-binoculars', description = 'Provides zoom. Works on: Rifles, Sniper Rifles' },
    { title = 'Large Scope', id = 'at_scope_large', args = { 'at_scope_large' }, icon = 'fas fa-binoculars', description = 'Provides zoom. Works on: Sniper Rifles' },
    { title = 'Advanced Scope', id = 'at_scope_advanced', args = { 'at_scope_advanced' }, icon = 'fas fa-binoculars', description = 'Provides advanced zoom. Works on: Sniper Rifles' },
    { title = 'NV Scope', id = 'at_scope_nv', args = { 'at_scope_nv' }, icon = 'fas fa-eye-slash', description = 'Provides night vision. Works on: Sniper Rifles' },
    { title = 'Thermal Scope', id = 'at_scope_thermal', args = { 'at_scope_thermal' }, icon = 'fas fa-thermometer', description = 'Provides thermal vision. Works on: Sniper Rifles' },
    { title = 'Holographic Sight', id = 'at_scope_holo', args = { 'at_scope_holo' }, icon = 'fas fa-eye', description = 'Provides a holographic sight. Works on: Pistols, SMGs, Rifles' },
    { title = 'Flat Muzzle', id = 'at_muzzle_flat', args = { 'at_muzzle_flat' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Tactical Muzzle', id = 'at_muzzle_tactical', args = { 'at_muzzle_tactical' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Fat Muzzle', id = 'at_muzzle_fat', args = { 'at_muzzle_fat' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Precision Muzzle', id = 'at_muzzle_precision', args = { 'at_muzzle_precision' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Heavy Muzzle', id = 'at_muzzle_heavy', args = { 'at_muzzle_heavy' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Slanted Muzzle', id = 'at_muzzle_slanted', args = { 'at_muzzle_slanted' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Split Muzzle', id = 'at_muzzle_split', args = { 'at_muzzle_split' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Squared Muzzle', id = 'at_muzzle_squared', args = { 'at_muzzle_squared' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' },
    { title = 'Bell Muzzle', id = 'at_muzzle_bell', args = { 'at_muzzle_bell' }, icon = 'fas fa-bolt', description = 'Reduces recoil. Works on: Rifles' }
}

Config.Modifications = {
    { title = 'Infinite Ammo', id = 'infinite_ammo', args = { 'infinite_ammo' }, icon = 'fas fa-infinity' }
}

