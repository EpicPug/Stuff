local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local RunService = game:GetService("RunService")
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

local Humanoid = Character and (Character:FindFirstChild("Humanoid") or Character:FindFirstChildWhichIsA("Humanoid"))

if not Humanoid then
	error("humanoid not found.")
end

for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("Seat") or v:IsA("VehicleSeat") then
		v:Destroy()
	end
end

function check()
	if Humanoid.Sit then
		Humanoid.Jump = true
	end
end

RunService:BindToRenderStep("SitCheck", 0, check)
