local playerCount = 0

-- Function to update player count
function UpdatePlayerCount()
    local players = GetActivePlayers()
    playerCount = #players
end

-- Function to update Discord Rich Presence
function UpdateRichPresence()
    -- Set Discord Application ID
    SetDiscordAppId(Config.AppID)

    -- Set the large and small icons
    SetDiscordRichPresenceAsset(Config.LargeImage)
    SetDiscordRichPresenceAssetText(Config.LargeText)
    SetDiscordRichPresenceAssetSmall(Config.SmallImage)
    SetDiscordRichPresenceAssetSmallText(Config.SmallText)

    -- Update details and state
    local details = Config.Details
    local state = Config.State:gsub("%%{count}", tostring(playerCount))
    SetRichPresence(details .. " | " .. state)

    -- Setup buttons
    if Config.Buttons and #Config.Buttons > 0 then
        for i, button in ipairs(Config.Buttons) do
            if i <= 2 then
                SetDiscordRichPresenceAction(i - 1, button.label, button.url)
            else
            end
        end
    else
    end
end



-- Main loop to update Rich Presence periodically
CreateThread(function()
    while true do
        UpdatePlayerCount()
        UpdateRichPresence()
        Wait(Config.UpdateInterval)
    end
end)