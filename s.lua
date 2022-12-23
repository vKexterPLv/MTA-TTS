--[[
    Developers: KexterPL / Discord: Belzebub#2137
]]--

function TTS(plr,mes)
	if plr and mes then
		triggerClientEvent("playTTS",resourceRoot,plr,mes)
		return true
	end
	return false
end

addCommandHandler("ttstoall",function(plr,cmd,...)
	msg = table.concat({...}," ")
	for k,v in pairs(getElementsByType("player")) do 
		TTS(v,msg)
	end
end)

addCommandHandler("ttstome",function(plr,cmd,...)
	msg = table.concat({...}," ")
	TTS(plr,msg)
end)
