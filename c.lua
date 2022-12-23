local reading
local brw

jsBase = [[
	function speak() {
		const text = "%s"
		const utterance = new SpeechSynthesisUtterance(text);
		utterance.voice = getFemaleVoice();
		speechSynthesis.speak(utterance);

		utterance.onend = (event) => {
			mta.triggerEvent("speechEnd")
		}
	}
	
	// Optional - select one of several voices
	function getFemaleVoice() {
		const voiceIndex = 4;
		return speechSynthesis.getVoices()[voiceIndex];
	}
]]

addEvent("speechEnd",true)
addEventHandler("speechEnd",resourceRoot,function()
	reading = false
	if isElement(brw) then
		destroyElement(brw)
	end
end)

function TTS(mes)
	mes = mes:lower()
	if not reading then
		reading = true
		brw = createBrowser(1,1,true)
		addEventHandler("onClientBrowserCreated",brw,function()
			loadBrowserURL(brw,'http://mta/nothing');
			focusBrowser(brw);
		end)


		addEventHandler("onClientBrowserDocumentReady",brw,function()
			executeBrowserJavascript(brw, jsBase:format(mes));
			executeBrowserJavascript(brw, "speak()");
		end)

		return true
	end
	return false
end

addEvent("playTTS",true)
addEventHandler("playTTS",root,function(plr,message)
	iprint("s")
	if plr ~= localPlayer then return end
	TTS(message)
end)
