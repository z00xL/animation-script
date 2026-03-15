local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local animate = char:WaitForChild("Animate")

local idle = animate:FindFirstChild("idle")
local walk = animate:FindFirstChild("walk")
local run = animate:FindFirstChild("run")
local jump = animate:FindFirstChild("jump")
local fall = animate:FindFirstChild("fall")
local climb = animate:FindFirstChild("climb")

if idle then
    local a1 = idle:FindFirstChild("Animation1")
    local a2 = idle:FindFirstChild("Animation2")

    if a1 then a1.AnimationId = "rbxassetid://616158929" end
    if a2 then a2.AnimationId = "rbxassetid://616160636" end
end

if walk then
    local w = walk:FindFirstChild("WalkAnim")
    if w then w.AnimationId = "rbxassetid://616168032" end
end

if run then
    local r = run:FindFirstChild("RunAnim")
    if r then r.AnimationId = "rbxassetid://616163682" end
end

if jump then
    local j = jump:FindFirstChild("JumpAnim")
    if j then j.AnimationId = "rbxassetid://845398858" end
end

if fall then
    local f = fall:FindFirstChild("FallAnim")
    if f then f.AnimationId = "rbxassetid://845396048" end
end

if climb then
    local c = climb:FindFirstChild("ClimbAnim")
    if c then c.AnimationId = "rbxassetid://845392038" end
end

print("Combo Zombie + Elder aplicado")
