local MainEvent = game:GetService('ReplicatedStorage').MainEvent

for i,v in ipairs(_G.Codes) do
	MainEvent:FireServer('EnterPromoCode', v)
	task.wait(3);
end
