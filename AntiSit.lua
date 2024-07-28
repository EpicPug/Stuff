pcall(function()
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Seat") or v:IsA("VehicleSeat") then
			v:Destroy()
		end
	end
end)

local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local Humanoid = Player.Character:WaitForChild('Humanoid')

Humanoid.Seated:Connect(function()
	if Humanoid.Sit  then
		Humanoid.Sit = false
		Humanoid.Jump = true
	end
end)
