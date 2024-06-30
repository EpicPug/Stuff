-- skid if you want 😋

return function(url, callback, embedData)
	local embed = {
		color = 2829617,
		title = embedData[1] or "No Title?",
		description = embedData[2] or "No Description?",
		type = "rich"
	}

	local payload = {
		content = "",
		embeds = { embed }
	}

	local request = {
		Url = url,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game.HttpService:JSONEncode(payload)
	}

	local success, errorMessage = pcall(callback, request)

	if not success then
		warn("Failed to send notification:", errorMessage)
	end
end
