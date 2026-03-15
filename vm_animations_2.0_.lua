local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

local function combo()
    local animate = char:WaitForChild("Animate")

    animate.idle.Animation1.AnimationId = "rbxassetid://616158929"
    animate.idle.Animation2.AnimationId = "rbxassetid://616160636"
    animate.walk.WalkAnim.AnimationId = "rbxassetid://616168032"
    animate.run.RunAnim.AnimationId = "rbxassetid://616163682"

    animate.jump.JumpAnim.AnimationId = "rbxassetid://845398858"
    animate.fall.FallAnim.AnimationId = "rbxassetid://845396048"
    animate.climb.ClimbAnim.AnimationId = "rbxassetid://845392038"

    if animate:FindFirstChild("swim") then
        animate.swim.Swim.AnimationId = "rbxassetid://845401742"
    end

    if animate:FindFirstChild("swimidle") then
        animate.swimidle.SwimIdle.AnimationId = "rbxassetid://845403856"
    end

    print("Combo aplicado")
end

local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "AnimGUI"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,200,0,100)
frame.Position = UDim2.new(0,50,0,200)
frame.BackgroundColor3 = Color3.fromRGB(40,40,40)

local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(1,-20,0,40)
button.Position = UDim2.new(0,10,0,30)
button.Text = "Zombie + Elder Combo"
button.BackgroundColor3 = Color3.fromRGB(70,70,70)
button.TextColor3 = Color3.new(1,1,1)

button.MouseButton1Click:Connect(function()
    combo()
end)
