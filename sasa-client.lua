local playerCount = 0

-- Function to update player count
function UpdatePlayerCount()
    local players = GetActivePlayers()
    playerCount = #players
end

-- Function to update Discord Rich Presence
function UpdateRichPresence()
    -- Set the Discord Application ID
    SetDiscordAppId(Config.AppID)

    -- Set the large icon and hover text
    SetDiscordRichPresenceAsset(Config.LargeImage)
    SetDiscordRichPresenceAssetText(Config.LargeText)

    -- Set the small icon and hover text
    SetDiscordRichPresenceAssetSmall(Config.SmallImage)
    SetDiscordRichPresenceAssetSmallText(Config.SmallText)

    -- Update text details and state
    local details = Config.Details
    local state = Config.State:gsub("%%{count}", tostring(playerCount)) -- Replace %{count} with player count

    SetRichPresence(details .. ' | ' .. state)
end

-- Main loop to update Rich Presence periodically
CreateThread(function()
    while true do
        UpdatePlayerCount()
        UpdateRichPresence()
        Wait(Config.UpdateInterval)
    end
end)
