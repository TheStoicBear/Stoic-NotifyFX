# Stoic-NotifyFX
![Stoic-NotifyFX](https://github.com/TheStoicBear/Stoic-NotifyFX/assets/112611821/cdad91c3-5f16-4247-b1f2-7fc69812e4a7)

Stoic-NotifyFX is a FiveM resource that provides customizable notifications and alert dialogs for server administrators to use in various scenarios such as warning players or making announcements.

## Features

- Customizable notifications with styling options.
- Alert dialogs for important messages.
- Command-based interactions for ease of use.

## Commands

### /msg [TargetID] [message]
Send a private message to a player identified by their ID.

### /announce [message]
Make a server-wide announcement.

### /warn [TargetID] [Reason]
Warn a player for a specific reason.

## Permissions

To use certain commands, players must have the appropriate permissions. The following permissions are available:

- `Stoic.UseNotify` - Allows usage of /announce, and /warn commands.

## Installation

1. Download `Stoic-NotifyFX` and put into your FiveM resources directory.
2. Add `ensure Stoic-NotifyFX` to your server.cfg file.

## Usage

To use Stoic-NotifyFX in your FiveM server, follow these steps:

1. Ensure the resource is started in your server.cfg file.
2. Grant appropriate permissions to players using an ACE permission system.
3. Players with the `Stoic.UseNotify` permission can utilize the available commands.

## Editing

To customize Stoic-NotifyFX or modify its behavior, follow these steps:

1. Modify the Lua scripts in the `client.lua` and `server.lua` files to suit your needs. (Config.lua will come soon)
2. Adjust the notification styles and content in the Lua scripts as desired.
3. Restart your FiveM server for changes to take effect.

## Contributing

Contributions to Stoic-NotifyFX are welcome! If you find any issues or have suggestions for improvements, please open an issue or pull request on GitHub.
