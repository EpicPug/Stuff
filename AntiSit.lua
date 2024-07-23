pcall(function()
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Seat") or v:IsA("VehicleSeat") then
			v:Destroy()
		end
	end
end)

local Player = game.Players.LocalPlayer
local RunService = game:GetService('RunService')

RunService.Heartbeat:Connect(function()
	local Humanoid = Player.Character and Player.Character:FindFirstChild('Humanoid')
	if Humanoid and Humanoid.Sit then
		Humanoid.Sit = false
		Humanoid.Jump = true
	end
end)
