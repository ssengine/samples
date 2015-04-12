local render2d=require("render2d")

local texture = require("resource").get("texture2d", "res:///qrcode.png")

texture:load()

local s2d = require("stage2d")
local Stage2D = s2d.Stage2D

local stage = Stage2D.new()

stage.render = function()
	render2d.drawImage(texture, -1, 1, 2, -2, 0, 0, 1, 1)
end

display:add(stage)
