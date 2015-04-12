local render2d=require("render2d")

local texture = require("resource").get("texture2d", "res:///qrcode.png")

texture:load()

local s2d = require("stage2d")
local Stage2D = s2d.Stage2D

local stage = Stage2D.new()
stage.camera:setPosition(0, 0)

function stage:render()
	r2d:matrixPush()
	self:transMatrix(rc)
	r2d:drawImage(texture, -0.5*100, 0.5*100, 0.5*100, -0.5*100, 0, 0, 1, 1)
	r2d:matrixPop()
end

display:add(stage)

runtime:setInterval(function(ev)
	-- stage.x = stage.x + 1
	stage.camera.y = stage.camera.y - 1
	stage.rotation = stage.rotation +0.1
end, 0.05)

print(display:getSize())