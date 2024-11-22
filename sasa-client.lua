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

    -- Add buttons if configured
    if Config.Buttons and #Config.Buttons > 0 then
        for i, button in ipairs(Config.Buttons) do
            if i == 1 then
                SetDiscordRichPresenceAction(0, button.label, button.url)
            elseif i == 2 then
                SetDiscordRichPresenceAction(1, button.label, button.url)
            end
        end
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