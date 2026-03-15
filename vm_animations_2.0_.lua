local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

local function playAnim(id)
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://"..id
    local track = animator:LoadAnimation(anim)
    track:Play()
end

-- Zombie idle
playAnim(616158929)

-- Zombie walk/run
playAnim(616168032)
playAnim(616163682)

-- Elder jump / fall
playAnim(845398858)
playAnim(845396048)

-- Elder climb
playAnim(845392038)

-- Elder swim
playAnim(845401742)
playAnim(845403856)
