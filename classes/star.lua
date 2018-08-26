star = class{}


function star:init()
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
      --determine the direction of star randomly
      direction = math.max(1,2)
      if direction == 1 then
          v = math.random(-100 * level, -200 * level)
      else
          v = math.random(100 * level, 200 * level)
      end
      self.stars[i] = {
          x = math.random(10, windowWidth - self.width -10),
          y = math.random(self.height + 40, windowHeight - self.height - 60),
          dx = v
      }
    end
end

function star:update(dt)
    for k, star in pairs(self.stars) do
        --if the star is touching window boundary reverse its direction
        if star.x > windowWidth or star.x < 0 then
            star.dx = -star.dx
        end
        star.x = star.x + star.dx * dt
    end
end

function star:render()
    for k, star in pairs(self.stars) do
        --draw each star while roating it according to time
        love.graphics.draw(
                            --draw start
                            self.image,
                            --current start postion
                            star.x,
                            star.y,
                            --radians of rotation as time keeps incresing so does rotation
                            love.timer.getTime(),
                            --default values
                            1, 1,
                            --to rotate around stars center not origin
                            self.width/2,
                            self.height/2
                          )
    end
end
