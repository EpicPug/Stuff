local LocalPlayer = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

local Humanoid = LocalPlayer.Character:FindFirstChild("Humanoid") or LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")

for i,v in pairs(game.Workspace:GetDescendants()) do
	if v.ClassName == "Seat" or v.ClassName == "VehicleSeat" then
		v:Destroy()
	end
end

function check()
	if Humanoid.Sit then
		Humanoid.Jump = true
	end
end

RunService:BindToRenderStep("Sit",0,check)
