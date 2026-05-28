--!strict

if not game:IsLoaded() then
	game.Loaded:Wait()
end

const Players = game:GetService("Players")

const player = Players.LocalPlayer :: Player

local connection: RBXScriptConnection? = nil

const function onCharacterAdded(character: Model)
	if connection then
		connection:Disconnect()
		connection = nil
	end

	const humanoid = character:WaitForChild("Humanoid") :: Humanoid

	connection = humanoid.Seated:Connect(function(active: boolean)
		if not active then
			return
		end

		humanoid.Sit = false
		humanoid.Jump = true
	end)
end

player.CharacterAdded:Connect(onCharacterAdded)

const character = player.Character

if character then
	onCharacterAdded(character)
end
