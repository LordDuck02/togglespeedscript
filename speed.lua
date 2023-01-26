local plr = game:GetService('Players').LocalPlayer
local UIS = game:GetService('UserInputService')
local speeding = false
local speed = 63
local default = 19

print('loading UIS script')
UIS.InputBegan:Connect(function(Input)
if Input.KeyCode == Enum.KeyCode.Z then
if speeding == false then
print('Speeding')
speeding = true
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = default
print('Stopped Speeding')
speeding = false
end
end
end)
warn('Script works')
