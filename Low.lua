local RunService = game:GetService('RunService')
RunService:Set3dRenderingEnabled(false)

pcall(function()
	settings().Physics.PhysicsEnvironmentalThrottle = 1
	settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
	UserSettings().GameSettings.MasterVolume = 0
end)

pcall(function()
	local Lighting = game:GetService('Lighting')
	Lighting.GlobalShadows = false

	for i,v in pairs(Lighting:GetDescendants()) do
		if v.Name ~= 'PepperSprayBlur' then
			v:Destroy()
		end
	end
end)
