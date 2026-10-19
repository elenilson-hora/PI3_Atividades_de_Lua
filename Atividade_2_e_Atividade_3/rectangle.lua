Rectangle = Object:extend()

function Rectangle:new(x, y, width, height, speedX, speedY)
    -- self.test = math.random(1, 1000)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.speedX = speedX
    self.speedY = speedY
end

function Rectangle:update(dt)
    self.x = self.x + self.speedX * dt
    self.y = self.y + self.speedY * dt
end

function Rectangle:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end
