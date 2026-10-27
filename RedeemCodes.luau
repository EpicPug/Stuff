--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local mainRemoteEvent = ReplicatedStorage:WaitForChild("MainEvent") :: RemoteEvent

local NEXT_REDEEM_DELAY = 3

for _, code in getgenv().Codes do
	if typeof(code) ~= "string" then
		continue
	end

	mainRemoteEvent:FireServer("EnterPromoCode", code)

	task.wait(NEXT_REDEEM_DELAY)
end
