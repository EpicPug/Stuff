function Send(a, b, c, x)
	local d = {content="",embeds={{color = x,title=c[1],description=c[2],type="rich"}}};
	local e = {Url=a,Body=game.HttpService:JSONEncode(d),Method="POST",Headers={["content-type"]="application/json"}};
	local f, g = pcall(function()
		b(e);
	end);
	if (not f and g) then
		warn(g);
	end
end

return Send
