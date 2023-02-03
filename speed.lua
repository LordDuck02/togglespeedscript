local hum = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
local UIS = game:GetService('UserInputService')
local keybind = Enum.KeyCode.Z
local speeding = false
local speed = 63
local default = 16

function notfity(title, text, duration)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = title,
		Text = text,
		Icon = "rbxassetid://57254792",
		Duration = duration
	})
end

notfity('Speed Script', 'Script Loaded, Press Z to toggle speed', 3)

UIS.InputBegan:Connect(function(input)
	if input.KeyCode == keybind then
		if not speeding then
			speeding = true
			notfity('Speed Script', 'Speeding', 3)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
		else
			speeding = false
			notfity('Speed Script', 'Stopped Speeding', 3)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = default
			print('Stopped Speeding')
		end
	end
end)
