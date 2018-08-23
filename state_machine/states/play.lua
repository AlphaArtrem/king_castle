play = class{__include = base}

function play:init()
    --getting crown and castle class
    self.crown = crown()
    self.castle = castle()

    --getting stars
    self.stars = star()

end

function play:update(dt)
      --updating crown for movement
      self.crown:update(dt)

      --updating stars
      self.stars:update(dt)

      --checking for collision
      if collisionMulti(self.stars, self.crown) then
          --if collided decrease health
          health = health - 1
      end
      if collisionSingle(self.castle, self.crown) then
          self.level = self.level + 1
          machine:change("play")
      end
end

function play:render()
    --rendering both crown and castle
    self.crown:render()
    self.castle:render()

    --rendering stars
    self.stars:render()

    --rederning health and level
    love.graphics.printf("H:"..health, windowWidth /2 - 150 , 20, windowWidth - 40, "center")
    love.graphics.printf(" L:"..level, windowWidth /2 - 30 , 20, windowWidth - 40, "center")
end
