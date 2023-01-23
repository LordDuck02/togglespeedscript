local plr = game:GetService('Players').LocalPlayer
local UIS = game:GetService('UserInputService')
local speeding = false
local speed = 40
local default = 16

print('Trying script')
UIS.InputBegan:Connect(function(Input)
if Input.KeyCode == Enum.KeyCode.Z then
if speeding == false then
speeding = true
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = default
speeding = false
end
end
end)
print('Script working')
