death = class{__include = base}

function death:update(dt)
      if love.keyboard.keys["enter"] or love.keyboard.keys["return"] then
          health = 3
          level = 1
          machine:change("play")
      end
end

function death:render()
    love.graphics.printf("King Is No More", 0, windowHeight/2 - 25, windowWidth, "center")
    love.graphics.printf("Press Enter To Play Again", 0, windowHeight/2 + 25, windowWidth, "center")
end
