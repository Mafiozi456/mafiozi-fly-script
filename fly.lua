local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 120)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Selectable = true
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
title.Text = "MAFIOZI FLY SCRIPT (Drag me)"
title.TextColor3 = Color3.fromRGB(255, 255, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.Parent = frame

local creator = Instance.new("TextLabel")
creator.Size = UDim2.new(1, 0, 0, 20)
creator.Position = UDim2.new(0, 0, 0, 30)
creator.BackgroundTransparency = 1
creator.Text = "By: Mafiozi Scripts"
creator.TextColor3 = Color3.fromRGB(0, 255, 255)
creator.Font = Enum.Font.Gotham
creator.TextSize = 12
creator.Parent = frame

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 40)
status.Position = UDim2.new(0, 0, 0, 50)
status.BackgroundTransparency = 1
status.Text = "Status: OFF\nPress F to toggle"
status.TextColor3 = Color3.fromRGB(255, 50, 50)
status.Font = Enum.Font.Gotham
status.TextSize = 12
status.Parent = frame

local controls = Instance.new("TextLabel")
controls.Size = UDim2.new(1, 0, 0, 30)
controls.Position = UDim2.new(0, 0, 0, 90)
controls.BackgroundTransparency = 1
controls.Text = "Speed: 50 (+/- to change)"
controls.TextColor3 = Color3.fromRGB(200, 200, 200)
controls.Font = Enum.Font.Gotham
controls.TextSize = 11
controls.Parent = frame

local flying = false
local speed = 50
local bv, bg

local function toggleFly()
    flying = not flying
    
    if flying then
        bv = Instance.new("BodyVelocity")
        bg = Instance.new("BodyGyro")
        
        bv.Parent = humanoidRootPart
        bg.Parent = humanoidRootPart
        
        bv.MaxForce = Vector3.new(10000, 10000, 10000)
        bg.MaxTorque = Vector3.new(10000, 10000, 10000)
        
        character.Humanoid.PlatformStand = true
        
        status.Text = "Status: ON\nPress F to toggle"
        status.TextColor3 = Color3.fromRGB(50, 255, 50)
    else
        if bv then bv:Destroy() end
        if bg then bg:Destroy() end
        
        character.Humanoid.PlatformStand = false
        
        status.Text = "Status: OFF\nPress F to toggle"
        status.TextColor3 = Color3.fromRGB(255, 50, 50)
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.F then
        toggleFly()
    elseif input.KeyCode == Enum.KeyCode.Equals then
        speed = speed + 10
        controls.Text = "Speed: " .. speed .. " (+/- to change)"
    elseif input.KeyCode == Enum.KeyCode.Minus then
        speed = math.max(10, speed - 10)
        controls.Text = "Speed: " .. speed .. " (+/- to change)"
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if flying and bv then
        local move = Vector3.new(0, 0, 0)
        
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then move = move + Vector3.new(0, 0, -1) end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then move = move + Vector3.new(0, 0, 1) end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then move = move + Vector3.new(-1, 0, 0) end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then move = move + Vector3.new(1, 0, 0) end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then move = move + Vector3.new(0, 1, 0) end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then move = move + Vector3.new(0, -1, 0) end
        
        if move.Magnitude > 0 then
            move = move.Unit * speed
            bv.Velocity = workspace.CurrentCamera.CFrame:VectorToWorldSpace(move)
        else
            bv.Velocity = Vector3.new(0, 0, 0)
        end
        
        bg.CFrame = workspace.CurrentCamera.CFrame
    end
end)

print("Mafiozi Fly Script LOADED!")
print("Drag the GUI to move it!")
