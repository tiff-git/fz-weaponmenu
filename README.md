![image](https://github.com/user-attachments/assets/979c0cc7-800a-4720-9b90-7659218b04e0)
![image](https://github.com/user-attachments/assets/d155d9b9-79df-4723-9622-064bfba204ff)
![image](https://github.com/user-attachments/assets/8b546126-4ee8-4f2d-8bdd-737d4d2e0627)
![image](https://github.com/user-attachments/assets/b166a8b3-ce2d-4820-8b9c-6eaedefe3be2)

# Ali's Weapon Menu

Ali's Weapon Menu is a comprehensive weapon management system for FiveM, designed to enhance your gameplay experience by providing a user-friendly interface for weapon selection, modification, and ammo management.

## Features

- **Weapon Selection**: Choose from a wide range of weapons with detailed descriptions.
- **Weapon Modifications**: Apply various modifications to your weapons, such as muzzles and flashlights.
- **Ammo Management**: Easily manage your ammo with features like infinite ammo and quick refills.
- **User Notifications**: Receive in-game notifications for actions like weapon selection and ammo application.
- **Frontend Sound Effects**: Enjoy immersive sound effects when interacting with the menu.

## Installation

1. **Clone the Repository**:
   ```sh
   git clone https://github.com/tibbycode/ali-weaponmenu.git
   ```

2. **Navigate to the Directory**:
   ```sh
   cd ali-weaponmenu
   ```

3. **Ensure Dependencies are Installed**:
   Make sure you have the following dependencies installed:
   - [`ox_lib`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22d%3A%5C%5CServers%5C%5Cend-of-days%5C%5CtxData%5C%5CQboxLeanPack_9B6930.base%5C%5Cresources%5C%5C%5Bfaraway%5D%5C%5Cali-weaponmenu%5C%5Cfxmanifest.lua%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fd%253A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%255Bfaraway%255D%2Fali-weaponmenu%2Ffxmanifest.lua%22%2C%22path%22%3A%22%2Fd%3A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%5Bfaraway%5D%2Fali-weaponmenu%2Ffxmanifest.lua%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A9%2C%22character%22%3A6%7D%7D%5D%5D "Go to definition")
   - [`ox_inventory`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22d%3A%5C%5CServers%5C%5Cend-of-days%5C%5CtxData%5C%5CQboxLeanPack_9B6930.base%5C%5Cresources%5C%5C%5Bfaraway%5D%5C%5Cali-weaponmenu%5C%5Cfxmanifest.lua%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fd%253A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%255Bfaraway%255D%2Fali-weaponmenu%2Ffxmanifest.lua%22%2C%22path%22%3A%22%2Fd%3A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%5Bfaraway%5D%2Fali-weaponmenu%2Ffxmanifest.lua%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A23%2C%22character%22%3A5%7D%7D%2C%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22d%3A%5C%5CServers%5C%5Cend-of-days%5C%5CtxData%5C%5CQboxLeanPack_9B6930.base%5C%5Cresources%5C%5C%5Bfaraway%5D%5C%5Cali-weaponmenu%5C%5Cserver%5C%5Cserver.lua%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fd%253A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%255Bfaraway%255D%2Fali-weaponmenu%2Fserver%2Fserver.lua%22%2C%22path%22%3A%22%2FD%3A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%5Bfaraway%5D%2Fali-weaponmenu%2Fserver%2Fserver.lua%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A102%2C%22character%22%3A44%7D%7D%5D%5D "Go to definition")

4. **Add to Your Server Configuration**:
   Add the following line to your [`server.cfg`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22d%3A%5C%5CServers%5C%5Cend-of-days%5C%5CtxData%5C%5CQboxLeanPack_9B6930.base%5C%5Cresources%5C%5C%5Bfaraway%5D%5C%5Cali-weaponmenu%5C%5Cfxmanifest.lua%22%2C%22_sep%22%3A1%2C%22external%22%3A%22file%3A%2F%2F%2Fd%253A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%255Bfaraway%255D%2Fali-weaponmenu%2Ffxmanifest.lua%22%2C%22path%22%3A%22%2Fd%3A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%5Bfaraway%5D%2Fali-weaponmenu%2Ffxmanifest.lua%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A17%2C%22character%22%3A0%7D%7D%5D%5D "Go to definition"):
   ```cfg
   ensure ali-weaponmenu
   ```

## Usage

### Commands

- **Open Weapon Menu**:
  ```sh
  /weaponmenu
  ```

- **Apply Infinite Ammo**:
  ```sh
  /maxammo
  ```

### Events

- **Apply Modification**:
  ```lua
  TriggerEvent('ali-weaponmenu:applyModification', 'modificationId')
  ```

- **Select Ammo**:
  ```lua
  TriggerEvent('ali-weaponmenu:selectAmmo', { 'ammoType' })
  ```

- **Select Weapon**:
  ```lua
  TriggerEvent('ali-weaponmenu:selectWeapon', { 'weaponId' })
  ```

## Configuration

### Custom Configurations

You can customize the available weapons and modifications by editing the following files:

- **Weapons**: [`shared/custom_config.lua`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%5Bfaraway%5D%2Fali-weaponmenu%2Fshared%2Fcustom_config.lua%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "d:\Servers\end-of-days\txData\QboxLeanPack_9B6930.base\resources\[faraway]\ali-weaponmenu\shared\custom_config.lua")
- **Modifications**: [`shared/config.lua`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fd%3A%2FServers%2Fend-of-days%2FtxData%2FQboxLeanPack_9B6930.base%2Fresources%2F%5Bfaraway%5D%2Fali-weaponmenu%2Fshared%2Fconfig.lua%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "d:\Servers\end-of-days\txData\QboxLeanPack_9B6930.base\resources\[faraway]\ali-weaponmenu\shared\config.lua")

### Example Configuration

```lua
CustomConfig.Weapons = {
    { title = '38 Snub Nose', id = 'WEAPON_38SNUBNOSE', args = { 'WEAPON_38SNUBNOSE' }, description = 'Uses: 9mm' },
    { title = '44 Magnum', id = 'WEAPON_44MAGNUM', args = { 'WEAPON_44MAGNUM' }, description = 'Uses: 9mm' }
}

Config.Modifications = {
    { title = 'Max Ammo', id = 'infinite_ammo', args = { 'infinite_ammo' }, icon = 'fas fa-bullseye', description = 'Apply infinite ammo to the weapon you are currently holding.' }
}
```
