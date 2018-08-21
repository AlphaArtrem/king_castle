castle = class{__include = base}

function castle:init()
    --loading castle image
    self.image = love.graphics.newImage("src/castle.png")

    --getting castle dimensions
    self.height = self.image:getHeight()
    self.width = self.image:getWidth()

    --getting postion of castle
    self.x = 20
    self.y = 10
end

function castle:render()
    --drawing castle image
    love.graphics.draw(self.image, self.x, self.y)
end
