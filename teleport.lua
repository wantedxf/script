local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))()
local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/wantedxf/script/main/notifyui"))()

NotifyLib.prompt('wanted#3334', 'welcome', 5)

local savedPosition = nil

function savePosition()
    savedPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    NotifyLib.prompt('wanted#3334', 'position saved', 4)
end

function teleportToSavedPosition()
    if savedPosition then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedPosition)
        NotifyLib.prompt('wanted#3334', 'teleported', 0.5)
    end
end

function clearSavedPosition()
    savedPosition = nil
    NotifyLib.prompt('wanted#3334', 'cleared position', 1)
end

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
    if key == "f" then
        if savedPosition then
            teleportToSavedPosition()
        else
            savePosition()
        end
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(message)
    if message == ";clear" then
        clearSavedPosition()
    end
end)
