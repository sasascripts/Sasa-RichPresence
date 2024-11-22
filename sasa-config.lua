Config = {}

-- Discord App ID for Rich Presence
Config.AppID = 'YOUR_DISCORD_APP_ID' -- Replace with your Discord Application ID

-- Large icon settings
Config.LargeImage = 'large_icon' -- Name of the large icon (set this in the Discord Developer Portal)
Config.LargeText = 'StateRP - The Ultimate Roleplay Experience' -- Hover text for the large icon

-- Small icon settings
Config.SmallImage = 'small_icon' -- Name of the small icon
Config.SmallText = 'Playing on FiveM' -- Hover text for the small icon

-- Details and state
Config.Details = 'Exploring StateRP'
Config.State = 'Having fun with %{count} players' -- %{count} will be replaced with the current player count

-- Buttons (up to 2 buttons)
Config.Buttons = {
    {
        label = 'Join our Discord', -- Text on the button
        url = 'https://discord.gg/yourserver' -- Link to your Discord server
    },
    {
        label = 'Visit our Website', -- Text on the button
        url = 'https://yourwebsite.com' -- Link to your website or any page
    }
}

-- Update interval in milliseconds (default: 15 seconds)
Config.UpdateInterval = 15000
