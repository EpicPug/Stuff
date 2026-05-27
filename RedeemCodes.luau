--!strict

const ReplicatedStorage = game:GetService("ReplicatedStorage")

const mainRemoteEvent = ReplicatedStorage:WaitForChild("MainEvent") :: RemoteEvent

const NEXT_REDEEM_DELAY = 3

for _, code in getgenv().Codes do
	if typeof(code) ~= "string" then
		continue
	end

	mainRemoteEvent:FireServer("EnterPromoCode", code)

	task.wait(NEXT_REDEEM_DELAY)
end
