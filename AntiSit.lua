-- works i guess

local Player = game:GetService("Players").LocalPlayer
local Connection = nil

pcall(function()
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Seat") or v:IsA("VehicleSeat") then
			v:Destroy()
		end
	end
end)

function idk()
	if Connection ~= nil then
		Connection:Disconnect()
		Connection = nil
	end
	
	local Char = Player.Character or Player.CharacterAdded:Wait()
	local Humanoid = Char:WaitForChild('Humanoid')
	
	Connection = Humanoid.Seated:Connect(function()
		if Humanoid.Sit then
			Humanoid.Sit = false
			Humanoid.Jump = true
		end
	end)
end

task.spawn(idk)

Player.CharacterAdded:Connect(idk)
