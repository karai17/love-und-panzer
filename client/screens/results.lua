require "libs.screen"
require "libs.panzer.client"

local function load(self)
	gui.results = Gspot()
	self.client = self.data.client
end

local function update(self, dt)
	self.client:update(dt)
	gui.results:update(dt)
end

local function draw(self)
	gui.results:draw()
end

local function mousepressed(self, x, y, button)
	gui.results:mousepress(x, y, button)
end

local function mousereleased(self, x, y, button)
	gui.results:mouserelease(x, y, button)
end

return function(data)
	return Screen {
		name			= "Results",
		load			= load,
		update			= update,
		draw			= draw,
		mousepressed	= mousepressed,
		mousereleased	= mousereleased,
		data			= data
	}
end
