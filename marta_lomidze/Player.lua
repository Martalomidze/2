Player = Class{}

function Player:init(x, y)
	self.x = x
	self.y = y
	
	self.width = 30
	self.height = 10
end


function Player:collides(ball)
	if self.x > ball.x + ball.width or ball.x > self.x + self.width then
		return false
	end
	
	if self.y > ball.y + ball.height or ball.y > self.y + self.height then
		return false
	end
	
	return true
end


function Player:render()
	love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
