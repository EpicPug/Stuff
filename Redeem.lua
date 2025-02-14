local ReplicatedStorage = game:GetService('ReplicatedStorage')
local MainEvent = ReplicatedStorage:WaitForChild('MainEvent')

for _, str in ipairs(_G.Codes) do
	MainEvent:FireServer('EnterPromoCode', str)
	task.wait(3)
end
