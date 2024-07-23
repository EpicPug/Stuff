game.Players.LocalPlayer.Idled:Connect(function()
	for i = 1, 15 do
		game:GetService('VirtualUser'):Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
		task.wait(0.25)
		game:GetService('VirtualUser'):Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
	end
end)
