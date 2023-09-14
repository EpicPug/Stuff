game.Workspace.Terrain.WaterWaveSize = 0
game.Workspace.Terrain.WaterWaveSpeed = 0
game.Workspace.Terrain.WaterReflectance = 0
game.Workspace.Terrain.WaterTransparency = 0

game.Lighting.GlobalShadows = false
game.Lighting.FogEnd = 9e9
game.Lighting.Brightness = 0

for i, v in pairs(game:GetDescendants()) do
	if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
	elseif v:IsA("Decal") or v:IsA("Texture") then
		v.Transparency = 1
	elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
		v.Lifetime = NumberRange.new(0)
	elseif v:IsA("Explosion") then
		v.BlastPressure = 1
		v.BlastRadius = 1
	elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
		v.Enabled = false
	elseif v:IsA("MeshPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
		v.TextureID = 10385902758728957
	end
end

for i, e in pairs(game.Lighting:GetChildren()) do
	if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
		e.Enabled = false
	end
end
