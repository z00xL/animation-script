local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

local animate = char:WaitForChild("Animate")

animate.idle.Animation1.AnimationId = "rbxassetid://616158929"
animate.idle.Animation2.AnimationId = "rbxassetid://616160636"

animate.walk.WalkAnim.AnimationId = "rbxassetid://616168032"
animate.run.RunAnim.AnimationId = "rbxassetid://616163682"

animate.jump.JumpAnim.AnimationId = "rbxassetid://845398858"
animate.fall.FallAnim.AnimationId = "rbxassetid://845396048"
animate.climb.ClimbAnim.AnimationId = "rbxassetid://845392038"
