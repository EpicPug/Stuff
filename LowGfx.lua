UserSettings():GetService("UserGameSettings").MasterVolume = 0

settings().Rendering.QualityLevel = 1
settings().Physics.PhysicsEnvironmentalThrottle = 1
settings().Rendering.MeshPartDetailLevel = 1

game:GetService('RunService'):Set3dRenderingEnabled(false)

pcall(function()
	for _, v in pairs(game:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Material = Enum.Material.SmoothPlastic
		end
	end
end)

pcall(function()
	local Lighting = game:GetService("Lighting")
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	Lighting.Brightness = 0
	
	for _, v in pairs(Lighting:GetChildren()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end

	sethiddenproperty(Lighting, "Technology", 2)
end)
