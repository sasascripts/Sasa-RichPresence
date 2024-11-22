# Discord Rich Presence for FiveM

This script allows all players on your FiveM server to display Discord Rich Presence on their profiles. It shows information like the server name, player activity, and the current number of players on the server. The script is fully customizable.

---

## Features
- Displays server name, icons, and player activity in Discord Rich Presence.
- Automatically updates the current player count every 15 seconds.
- Easy configuration via `config.lua`.
- Supports large and small icons with hover text.

---

## Installation Guide

### 1. Download and Place the Script
1. Download the script files from this repository.
2. Place the folder (e.g., `PlayerRichPresence`) into your FiveM server's `resources` directory.

### 2. Setup Discord Application
1. Go to the [Discord Developer Portal](https://discord.com/developers/applications) and create a new application.
2. Copy the **Application ID** from the "General Information" tab.
3. Under the "Rich Presence > Art Assets" section:
   - Upload your **large icon** (e.g., `large_icon`) and give it a name.
   - Upload your **small icon** (e.g., `small_icon`) and give it a name.

### 3. Configure the Script
1. Open `config.lua`.
2. Replace the placeholder `YOUR_DISCORD_APP_ID` with your Discord Application ID.
3. Update the icon names, hover text, and any other desired settings.

Example:
Config.AppID = '123456789012345678'
Config.LargeImage = 'large_icon'
Config.LargeText = 'StateRP - The Ultimate Roleplay Experience'
Config.SmallImage = 'small_icon'
Config.SmallText = 'Playing on FiveM'
Config.Details = 'Exploring StateRP'
Config.State = 'Having fun with %{count} players'
