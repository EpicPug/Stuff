local Players = game:GetService('Players');

local CurrentCamera = game:GetService('Workspace').CurrentCamera;
local VirtualUser = game:GetService('VirtualUser');

function Idled()
	for i = 1,10 do
		VirtualUser:Button2Down(Vector2.new(0,0), CurrentCamera.CFrame);
		task.wait(1);
		VirtualUser:Button2Up(Vector2.new(0,0), CurrentCamera.CFrame);
	end;
end;

Players.LocalPlayer.Idled:Connect(Idled);
