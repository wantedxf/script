local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))()
local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/wantedxf/script/main/notifyui"))()
local afk = false
local injected = true
NotifyLib.prompt('wanted#3334', 'welcome to wanteds anti afk', 5)

local players = game:GetService("Players")
local player = players.LocalPlayer

function AntiAFK()
  player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0)
	wait(3)
end

game.Players.LocalPlayer.Chatted:Connect(function(message)
	if message == "afk" then
        
        afk = true
        print("afked")
        NotifyLib.prompt('wanted#3334', 'AntiAFK enabled', 5)
	end
end)

game.Players.LocalPlayer.Chatted:Connect(function(message)
	if message == "!" then
        
        afk = false
        print("unafk")
        NotifyLib.prompt('wanted#3334', 'AntiAFK disabled', 5)
	end
end)

game.Players.LocalPlayer.Chatted:Connect(function(message)
	if message == "rem" then
        
        NotifyLib.prompt('wanted#3334', 'Thank you for using wanteds AntiAFK, bye', 5
	injected = false
	end

while true do
    if afk then
        AntiAFK()
    end
    wait(3)
end
			
while true do
    if injected then
	else
	script:Destroy()
    end
    wait(3)
end
