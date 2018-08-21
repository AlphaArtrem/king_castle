star = class{}

function star:init(level)
    --star image
    self.image = love.graphics.newImage("src/star.png")

    --star dimensions
    self.height = self.image:getHeight()
    self.width = self.image:getWidth()

    --creating table of all stars to be drawn
    self.starno = level * 2
    self.stars = {}
    math.randomseed(os.time())
    for i = 1 , self.starno do
      self.stars[i] = {
          x = math.random(10, windowWidth - self.width -10),
          y = math.random(self.height + 10, windowHeight - self.height - 10),
          dx = math.random(100 * level, 200 * level),
      }
    end
end

function star:update(dt)
    for k, star in pairs(self.stars) do
        star.x = star.x + star.dx * dt
    end
end

function star:render()
    for k, star in pairs(self.stars) do
        love.graphics.draw(self.image, star.x, star.y)
    end
end
