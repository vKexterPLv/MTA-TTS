--[[
    Developers: KexterPL / Discord: Belzebub#2137
]]--

function TTS(plr,mes)
	triggerClientEvent("playTTS",resourceRoot,plr,mes)
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
