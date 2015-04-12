local render2d=require("render2d")

local texture = require("resource").get("texture2d", "res:///qrcode.png")

texture:load()

local s2d = require("stage2d")
local Stage2D = s2d.Stage2D

local stage = Stage2D.new()

function stage:render()
	r2d:matrixPush()
	self:transMatrix(rc)
	r2d:drawImage(texture, -1, 1, 2, -2, 0, 0, 1, 1)
	r2d:matrixPop()
end

display:add(stage)

runtime:setInterval(function()
	stage.x = stage.x + 0.01
	stage.rotation = stage.rotation +0.1
end, 0.2)