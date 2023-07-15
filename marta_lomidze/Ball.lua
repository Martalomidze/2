Ball=Class{}

function Ball:init()
         
         self.width = 5
         self.height = 5
         
         self.x = math.random(0, VIRTUAL_WIDTH - self.width)
         self.y = 0 - self.height


         self.dy = 200
end

function Ball:reset()
	self.x = math.random(0, VIRTUAL_WIDTH - self.width)
	self.y = 0 - self.height
	
	self.dy = 200
end

function Ball:update(dt)
          ball.y = ball.y + ball.dy * dt
end

function Ball:render()
          love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
