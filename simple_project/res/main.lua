local render2d=require("render2d")

local texture = require("resource").get("texture2d", "res:///qrcode.png")

texture:load()

local count = 100

runtime.onTick:addListener(function()
	render2d.drawImage(texture, -1, 1, 2, -2, 0, 0, 1, 1)
	for i = 1, count do
		render2d.drawLine(math.random(), math.random(), math.random(), math.random())
	end
end)

log.info("There" ..runtime:getTime())
local ev = runtime:setTimeout(function()
	log.info("Here".. runtime:getTime())
end, 1)

runtime:setInterval(function()
	log.info("runtime".. runtime:getTime())
end, 1)

local localAgent = runtime:new()

localAgent:setInterval(function()
	log.info("localAgent".. localAgent:getTime())
end, 0.5)

localAgent:setTimeRatio(0.5)