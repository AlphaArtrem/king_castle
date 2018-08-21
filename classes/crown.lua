crown = class{}

function crown:init(dx,dy)
    --loading crown image
    self.image = love.graphics.newImage("src/crown.png")

    --getting height and width of crown
    self.height = self.image:getHeight()
    self.width = self.image:getWidth()

    --getting position of crown
    self.x = windowWidth - self.width - 20
    self.y = windowHeight - self.height - 10

    --variable to control speed of crown
    self.dx = dx or 100
    self.dy = dy or 90
end

function crown:update(dt)
      --to move the crown
      --when arrow keys are pressed move accordingly in the screen bound
      if love.keyboard.isDown("up") then
          self.y = math.max(10, self.y - self.dy * dt)
      elseif love.keyboard.isDown("down") then
          self.y = math.min(windowHeight -self.height, self.y + self.dy * dt)
      elseif love.keyboard.isDown("left") then
          self.x = math.max(0, self.x - self.dx * dt)
      elseif love.keyboard.isDown("right") then
          self.x = math.min(windowWidth - self.width - 10, self.x + self.dx * dt)
      end
end

function crown:render()
    --drawing crown image
    love.graphics.draw(self.image, self.x, self.y)
end
