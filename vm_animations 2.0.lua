local player = game.Players.LocalPlayer

local function getChar()
    return player.Character or player.CharacterAdded:Wait()
end

local function applyCombo()
    local char = getChar()
    local animate = char:WaitForChild("Animate")

    -- Zombie
    animate.idle.Animation1.AnimationId = "rbxassetid://616158929"
    animate.idle.Animation2.AnimationId = "rbxassetid://616160636"
    animate.walk.WalkAnim.AnimationId = "rbxassetid://616168032"
    animate.run.RunAnim.AnimationId = "rbxassetid://616163682"

    -- Elder
    animate.jump.JumpAnim.AnimationId = "rbxassetid://845398858"
    animate.fall.FallAnim.AnimationId = "rbxassetid://845396048"
    animate.climb.ClimbAnim.AnimationId = "rbxassetid://845392038"

    if animate:FindFirstChild("swim") then
        animate.swim.Swim.AnimationId = "rbxassetid://845401742"
    end

    if animate:FindFirstChild("swimidle") then
        animate.swimidle.SwimIdle.AnimationId = "rbxassetid://845403856"
    end

    print("Zombie + Elder combo aplicado")
end

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "AnimationGUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0,200,0,120)
frame.Position = UDim2.new(0,50,0,200)
frame.BackgroundColor3 = Color3.fromRGB(40,40,40)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,30)
title.Text = "Animation Combo"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1,-20,0,40)
button.Position = UDim2.new(0,10,0,50)
button.Text = "Zombie + Elder"
button.BackgroundColor3 = Color3.fromRGB(70,70,70)
button.TextColor3 = Color3.new(1,1,1)
button.Parent = frame

button.MouseButton1Click:Connect(function()
    applyCombo()
end)
