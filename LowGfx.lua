local Player = game:GetService("Players").LocalPlayer

UserSettings():GetService("UserGameSettings").MasterVolume = 0 

settings().Rendering.QualityLevel = "Level01"
settings().Physics.PhysicsEnvironmentalThrottle = 1

pcall(function()
	for _, v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("TrussPart") or v:IsA("WedgePart") or v:IsA("CornerWedgePart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
			v.Material = Enum.Material.SmoothPlastic
			v.Transparency = 1
		elseif v:IsA("MeshPart") and v.Parent.Name ~= Player.Name then
			v.TextureID = 0
			v.MeshId = 0
			v.Material = Enum.Material.SmoothPlastic
			v.Transparency = 1
		elseif v:IsA("SpecialMesh") then
			v.TextureId = 0
			v.MeshId = 0
		elseif v:IsA("Decal") or v:IsA("Texture") then
			v.Texture = 0
			v.Transparency = 1
		elseif v:IsA("SpotLight") or v:IsA("PointLight") or v:IsA("SurfaceLight") then
			v.Range = 0
			v.Enabled = false
		elseif v:IsA("Sparkles") or v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Beam") then
			v.Enabled = false
		elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("Accessory") then
			v:Destroy()
		end
	end
end)

pcall(function()
	local Lighting = game:GetService("Lighting")
	Lighting.GlobalShadows = false
	
	for _, v in pairs(Lighting:GetChildren()) do
		if v.Name ~= 'PepperSprayBlur' then
			v:Destroy()
		end
	end
end)
