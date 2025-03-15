# FiveM F11 Menu Script

This is a simple FiveM script that creates an F11 menu showing all the players currently in the server. The script is compatible with both ESX and QBCore frameworks.

## Installation

### Step 1: Download and Extract

1. Download the script files from this repository.
2. Extract the files into a folder named `f11_menu` (or any name you prefer) inside your FiveM resources directory.

### Step 2: Add to Server

1. Open your server configuration file (`server.cfg`) and add the following line to ensure the resource is started:
    ```plaintext
    ensure f11_menu
    ```

### Step 3: Configure the Script

1. Open the `config.lua` file and configure it as needed. The default configuration should work for most setups.

### Step 4: Start the Server

1. Start your FiveM server and press F11 in-game to see the player menu.

## Configuration

The `config.lua` file allows you to configure the script. Below is an example configuration:
```lua
Config = {}

-- Key to open the menu (default: F11)
Config.MenuKey = 344

-- URL of the server logo to display in the menu
Config.ServerLogo = 'logo.png'
```

## Files

- `fivem_f11_menu.lua`: The main client script.
- `menu.html`: The HTML file for the menu.
- `menu.css`: The CSS file for styling the menu.
- `config.lua`: The configuration file.
- `fxmanifest.lua`: The resource manifest file.

## License

This project is licensed under the MIT License.