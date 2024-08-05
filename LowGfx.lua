UserSettings():GetService("UserGameSettings").MasterVolume = 0

settings().Rendering.QualityLevel = 1
settings().Physics.PhysicsEnvironmentalThrottle = 1
settings().Rendering.MeshPartDetailLevel = 1

game:GetService("RunService"):Set3dRenderingEnabled(false)
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

pcall(function()
	for _, v in pairs(game:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Material = Enum.Material.SmoothPlastic
		elseif v:IsA("Decal") or v:IsA("Texture") then
			v:Destroy()
		elseif v:IsA("MeshPart") and v.Parent.Parent.Name ~= "Players" then
			v.MeshId = ""
			v.TextureID = ""
			v.Material = Enum.Material.SmoothPlastic
		elseif v:IsA("SpecialMesh") then
			v.MeshId = ""
			v.TextureId = ""
		elseif v:IsA("PointLight") or v:IsA("SpotLight") or v:IsA("SurfaceLight") then
			v.Range = 0
			v.Enabled = false
		elseif v:IsA("Sparkles") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Beam") or v:IsA("Trail") then
			v.Enabled = false
		elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("Accessory") then
			v:Destroy()
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
