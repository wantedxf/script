local savedPosition = nil

function savePosition()
    savedPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end

function teleportToSavedPosition()
    if savedPosition then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedPosition)
    end
end

function clearSavedPosition()
    savedPosition = nil
    game.StarterGui:SetCore("SendLocalNotification", {
        Title = "wanteds func",
        Text = "Position cleared",
        Duration = 5,
        Button1 = "OK",
        Button2 = "",
        Callback = nil,
        Icon = nil,
        Enabled = true,
        Badge = nil,
        Transparency = 0.5,
        ClickableWhenViewportHidden = true,
        Position = UDim2.new(0, 10, 1, -110),
        AnchorPoint = Vector2.new(0, 1)
    })
end

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
    if key == "f" then
        if savedPosition then
            teleportToSavedPosition()
            
            game.StarterGui:SetCore("SendNotification", {
            Title = "wanted#3334",
            Text = "Teleported",
            Duration = 5,
            Icon = nil,
            Button1 = "OK",
            Button2 = "",
            Callback = nil,
            Enabled = true,
            Badge = nil,
            Transparency = 0.5,
            ClickableWhenViewportHidden = true,
            Position = UDim2.new(0, 10, 1, -110),
            AnchorPoint = Vector2.new(0, 1)
        })
    
        else
            savePosition()
        end
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(message)
    if message == "0" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "wanted#3334",
            Text = "Position cleared",
            Duration = 5,
            Icon = nil,
            Button1 = "OK",
            Button2 = "",
            Callback = nil,
            Enabled = true,
            Badge = nil,
            Transparency = 0.5,
            ClickableWhenViewportHidden = true,
            Position = UDim2.new(0, 10, 1, -110),
            AnchorPoint = Vector2.new(0, 1)
        })
        
        clearSavedPosition()
    end
end)
