UserSettings():GetService("UserGameSettings").MasterVolume = 0 

settings().Physics.PhysicsEnvironmentalThrottle = 1
settings().Rendering.QualityLevel = "Level01"

pcall(function()
	for _, v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("TrussPart") or v:IsA("WedgePart") or v:IsA("CornerWedgePart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
			v.Material = Enum.Material.SmoothPlastic
		end
	end
end)
