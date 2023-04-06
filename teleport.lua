Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))()
		local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()
        	NotifyLib.prompt('wanted#3334', 'welcome', 5)
        	

local savedPosition = nil

function savePosition()
    savedPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end

function teleportToSavedPosition()
    if savedPosition then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedPosition)
    end
end

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
    if key == "f" then
        if savedPosition then
            teleportToSavedPosition()
            
        	NotifyLib.prompt('wanted#3334', 'teleported', 1)
    
        else
            savePosition()
                
        	NotifyLib.prompt('wanted#3334', 'osition saved', 4)
        end
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(message)
    if message == "0" then
	savedPosition = nil
	clearsavedPosition()
	
        	NotifyLib.prompt('wanted#3334', 'cleared position', 1)
    end
end)
