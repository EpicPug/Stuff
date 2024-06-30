local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Humanoid = LocalPlayer.Character and (LocalPlayer.Character:FindFirstChild("Humanoid") or LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"))

if not Humanoid then
	error("Humanoid not found in LocalPlayer's character.")
end

for _, v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("Seat") or v:IsA("VehicleSeat") then
		v:Destroy()
	end
end

function check()
	if Humanoid.Sit then
		Humanoid.Jump = true
	end
end

RunService:BindToRenderStep("SitCheck",0,check)
