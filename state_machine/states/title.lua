title = class{__include = base}

function title:render()
    --set text color to black
    love.graphics.setColor(0,0,0,255)
    --print title in middle of screen
    love.graphics.printf("King Castle", 0, windowHeight/2 - 25, windowWidth, "center")
    --reset draw color to white
    love.graphics.setColor(255,255,255,150)
end

function title:update()
    --if enter key was pressed exit
    if love.keyboard.keys["return"] or love.keyboard.keys["enter"] then
      love.event.quit()
    end
end
