state = class{__include = base}

function state:update(dt)
      if love.keyboard.keys["enter"] or love.keyboard.keys["return"] then
          machine:change("play")
      end
end

function state:render()
    love.graphics.printf("Level : " .. level, 0, windowHeight/2 - 25, windowWidth, "center")
    love.graphics.printf("Press Enter", 0, windowHeight/2 + 25, windowWidth, "center")
end
