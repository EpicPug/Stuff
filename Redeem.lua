if (_G.Codes) then
	local MainEvent = game.ReplicatedStorage.MainEvent;
	for i,Code in pairs(_G.Codes) do
		MainEvent:FireServer('EnterPromoCode',Code);
		task.wait(2);
	end;
end;
