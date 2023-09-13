local LocalPlayer = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

local Humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")

for i,v in pairs(game.Workspace:GetDescendants()) do
	if v.ClassName == "Seat" or v.ClassName == "VehicleSeat" then
		v.Disabled = true
	end
end

function check()
	if Humanoid.Sit then
		Humanoid.Sit = false
	end
end

RunService:BindToRenderStep("Sit",0,check)
