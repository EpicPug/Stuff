local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local TeleportService = game:GetService("TeleportService")

local place_id = game.PlaceId
local job_id = game.JobId

local API = "https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Desc&limit=100"

return function()
	local request = loadstring(game:HttpGet("https://raw.githubusercontent.com/EpicPug/Stuff/main/request.lua"))()
	if request then
		local data
		
		local success, response
		local found_servers = {}
		
		success, response = pcall(function()
			data = request({Url = API:format(place_id)})
		end)

		if success and data and data.Body then
			local decode
			success, response = pcall(function()
				decode = HttpService:JSONDecode(data.Body)
			end)

			if success and decode and decode.data then
				for _, found in pairs(decode.data) do
					if type(found) == "table" and found["id"] ~= job_id then
						table.insert(found_servers, {
							["playing"] = found.playing,
							["maxPlayers"] = found.maxPlayers,
							["ping"] = found.ping,
							["id"] = found.id
						})
					end
				end

				if #found_servers > 0 then
					local id
					local lowest_ping = 100

					for i, v in ipairs(found_servers) do
						if v["playing"] < v["maxPlayers"] then
							if v["ping"] < lowest_ping then
								id = v["id"]
								lowest_ping = v["ping"]
							end
						end
					end

					if id then
						TeleportService.TeleportInitFailed:Connect(function()
							TeleportService:TeleportToPlaceInstance(place_id, id, Players.LocalPlayer)
						end)

						repeat
							TeleportService:TeleportToPlaceInstance(place_id, id, Players.LocalPlayer)
							task.wait(2)
						until not game
					end
				end
			end
		end
	end
end
