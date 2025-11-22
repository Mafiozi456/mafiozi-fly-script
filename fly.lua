local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(200, 80, 0)
title.Text = "MAFIOZI FLY SCRIPT"
title.TextColor3 = Color3.fromRGB(255, 255, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = frame

local creator = Instance.new("TextLabel")
creator.Size = UDim2.new(1, 0, 0, 30)
creator.Position = UDim2.new(0, 0, 0, 40)
creator.BackgroundTransparency = 1
creator.Text = "By: Mafiozi Scripts"
creator.TextColor3 = Color3.fromRGB(255, 255, 0)
creator.Font = Enum.Font.Gotham
creator.TextSize = 14
creator.Parent = frame

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 40)
status.Position = UDim2.new(0, 0, 0, 70)
status.BackgroundTransparency = 1
status.Text = "Status: OFF"
status.TextColor3 = Color3.fromRGB(255, 255, 0)
status.Font = Enum.Font.Gotham
status.TextSize = 14
status.Parent = frame

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.8, 0, 0, 50)
toggleButton.Position = UDim2.new(0.1, 0, 0, 110)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
toggleButton.Text = "TOGGLE FLY"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 0)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 16
toggleButton.Parent = frame

local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0, 30)
speedLabel.Position = UDim2.new(0, 0, 0, 165)
speedLabel.BackgroundTransparency = 1
speedLabel.Text = "Speed: 50"
speedLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
speedLabel.Font = Enum.Font.Gotham
speedLabel.TextSize = 14
speedLabel.Parent = frame

local speedUpButton = Instance.new("TextButton")
speedUpButton.Size = UDim2.new(0.35, 0, 0, 40)
speedUpButton.Position = UDim2.new(0.1, 0, 0, 195)
speedUpButton.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
speedUpButton.Text = "SPEED +"
speedUpButton.TextColor3 = Color3.fromRGB(255, 255, 0)
speedUpButton.Font = Enum.Font.Gotham
speedUpButton.TextSize = 14
speedUpButton.Parent = frame

local speedDownButton = Instance.new("TextButton")
speedDownButton.Size = UDim2.new(0.35, 0, 0, 40)
speedDownButton.Position = UDim2.new(0.55, 0, 0, 195)
speedDownButton.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
speedDownButton.Text = "SPEED -"
speedDownButton.TextColor3 = Color3.fromRGB(255, 255, 0)
speedDownButton.Font = Enum.Font.Gotham
speedDownButton.TextSize = 14
speedDownButton.Parent = frame

local controlsFrame = Instance.new("Frame")
controlsFrame.Size = UDim2.new(0, 180, 0, 180)
controlsFrame.Position = UDim2.new(0, 320, 0, 10)
controlsFrame.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
controlsFrame.BorderSizePixel = 0
controlsFrame.Active = true
controlsFrame.Draggable = true
controlsFrame.Parent = screenGui

local controlsTitle = Instance.new("TextLabel")
controlsTitle.Size = UDim2.new(1, 0, 0, 30)
controlsTitle.Position = UDim2.new(0, 0, 0, 0)
controlsTitle.BackgroundColor3 = Color3.fromRGB(200, 80, 0)
controlsTitle.Text = "MOVEMENT (Drag)"
controlsTitle.TextColor3 = Color3.fromRGB(255, 255, 0)
controlsTitle.Font = Enum.Font.GothamBold
controlsTitle.TextSize = 14
controlsTitle.Parent = controlsFrame

local forwardBtn = Instance.new("TextButton")
forwardBtn.Size = UDim2.new(0.3, 0, 0, 40)
forwardBtn.Position = UDim2.new(0.35, 0, 0, 40)
forwardBtn.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
forwardBtn.Text = "W"
forwardBtn.TextColor3 = Color3.fromRGB(255, 255, 0)
forwardBtn.Font = Enum.Font.GothamBold
forwardBtn.TextSize = 16
forwardBtn.Parent = controlsFrame

local leftBtn = Instance.new("TextButton")
leftBtn.Size = UDim2.new(0.3, 0, 0, 40)
leftBtn.Position = UDim2.new(0.05, 0, 0, 85)
leftBtn.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
leftBtn.Text = "A"
leftBtn.TextColor3 = Color3.fromRGB(255, 255, 0)
leftBtn.Font = Enum.Font.GothamBold
leftBtn.TextSize = 16
leftBtn.Parent = controlsFrame

local rightBtn = Instance.new("TextButton")
rightBtn.Size = UDim2.new(0.3, 0, 0, 40)
rightBtn.Position = UDim2.new(0.65, 0, 0, 85)
rightBtn.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
rightBtn.Text = "D"
rightBtn.TextColor3 = Color3.fromRGB(255, 255, 0)
rightBtn.Font = Enum.Font.GothamBold
rightBtn.TextSize = 16
rightBtn.Parent = controlsFrame

local backBtn = Instance.new("TextButton")
backBtn.Size = UDim2.new(0.3, 0, 0, 40)
backBtn.Position = UDim2.new(0.35, 0, 0, 85)
backBtn.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
backBtn.Text = "S"
backBtn.TextColor3 = Color3.fromRGB(255, 255, 0)
backBtn.Font = Enum.Font.GothamBold
backBtn.TextSize = 16
backBtn.Parent = controlsFrame

local upBtn = Instance.new("TextButton")
upBtn.Size = UDim2.new(0.3, 0, 0, 40)
upBtn.Position = UDim2.new(0.7, 0, 0, 130)
upBtn.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
upBtn.Text = "↑"
upBtn.TextColor3 = Color3.fromRGB(255, 255, 0)
upBtn.Font = Enum.Font.GothamBold
upBtn.TextSize = 16
upBtn.Parent = controlsFrame

local downBtn = Instance.new("TextButton")
downBtn.Size = UDim2.new(0.3, 0, 0, 40)
downBtn.Position = UDim2.new(0.05, 0, 0, 130)
downBtn.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
downBtn.Text = "↓"
downBtn.TextColor3 = Color3.fromRGB(255, 255, 0)
downBtn.Font = Enum.Font.GothamBold
downBtn.TextSize = 16
downBtn.Parent = controlsFrame

local flying = false
local speed = 50
local bv, bg

local moveDirection = Vector3.new(0, 0, 0)

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
        
        status.Text = "Status: ON"
        toggleButton.Text = "DISABLE FLY"
        print("Fly: ON - Use movement buttons!")
    else
        if bv then bv:Destroy() end
        if bg then bg:Destroy() end
        
        character.Humanoid.PlatformStand = false
        moveDirection = Vector3.new(0, 0, 0)
        
        status.Text = "Status: OFF"
        toggleButton.Text = "ENABLE FLY"
    end
end

toggleButton.MouseButton1Click:Connect(function()
    toggleFly()
end)

speedUpButton.MouseButton1Click:Connect(function()
    speed = speed + 10
    speedLabel.Text = "Speed: " .. speed
end)

speedDownButton.MouseButton1Click:Connect(function()
    speed = math.max(10, speed - 10)
    speedLabel.Text = "Speed: " .. speed
end)

local function startMoving(direction)
    moveDirection = moveDirection + direction
end

local function stopMoving(direction)
    moveDirection = moveDirection - direction
end

forwardBtn.MouseButton1Down:Connect(function() startMoving(Vector3.new(0, 0, -1)) end)
forwardBtn.MouseButton1Up:Connect(function() stopMoving(Vector3.new(0, 0, -1)) end)

backBtn.MouseButton1Down:Connect(function() startMoving(Vector3.new(0, 0, 1)) end)
backBtn.MouseButton1Up:Connect(function() stopMoving(Vector3.new(0, 0, 1)) end)

leftBtn.MouseButton1Down:Connect(function() startMoving(Vector3.new(-1, 0, 0)) end)
leftBtn.MouseButton1Up:Connect(function() stopMoving(Vector3.new(-1, 0, 0)) end)

rightBtn.MouseButton1Down:Connect(function() startMoving(Vector3.new(1, 0, 0)) end)
rightBtn.MouseButton1Up:Connect(function() stopMoving(Vector3.new(1, 0, 0)) end)

upBtn.MouseButton1Down:Connect(function() startMoving(Vector3.new(0, 1, 0)) end)
upBtn.MouseButton1Up:Connect(function() stopMoving(Vector3.new(0, 1, 0)) end)

downBtn.MouseButton1Down:Connect(function() startMoving(Vector3.new(0, -1, 0)) end)
downBtn.MouseButton1Up:Connect(function() stopMoving(Vector3.new(0, -1, 0)) end)

game:GetService("RunService").Heartbeat:Connect(function()
    if flying and bv then
        if moveDirection.Magnitude > 0 then
            local camera = workspace.CurrentCamera
            local worldMove = camera.CFrame:VectorToWorldSpace(moveDirection)
            bv.Velocity = worldMove.Unit * speed
        else
            bv.Velocity = Vector3.new(0, 0, 0)
        end
        
        if bg then
            bg.CFrame = workspace.CurrentCamera.CFrame
        end
    end
end)

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoidRootPart = newCharacter:WaitForChild("HumanoidRootPart")
    flying = false
    status.Text = "Status: OFF"
    toggleButton.Text = "ENABLE FLY"
end)

print("Mafiozi Fly Script WITH MOVABLE CONTROLS LOADED!")
