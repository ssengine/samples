local rtAgent = runtime.new()
local layers = event.Dispatcher.new()

local camera = Camera2D.new(0, 0, 64, 48)

local bg = Background.new("res:///bg.jpg")
layers:add(camera.wrap(bg,0.7))

local stage = Node2D.new()
stage:newImage("res:///player.png")
layers:add(camera.wrap(stage))

local ui = require("csb").loadUI("res:///ui/foo.csb")
layers:add(ui)

return Scene.new(rtAgent, layers)