--adding header files
require "headers"

windowWidth = 1366
windowHeight = 768

function love.load()
    ---getting the background image
    background = love.graphics.newImage("src/background.png")
    --setting the window title
    love.window.setTitle("King Castle")
    --setting the window
    love.window.setMode(windowWidth, windowHeight, {
        fullscreen = true
    })
    --loading font
    font = love.graphics.newFont("src/font.ttf", 50)
    --setting font
    love.graphics.setFont(font)
    --intialising state machine with state objects form the state classes
    machine = machine{
      ["title"] = function() return title() end
    }
    --changing the state to title
    machine:change("title")
    --[[making table to keep track of single keystroke to be passed onto other obejcts so that it can be accessed out of main file]]
    love.keyboard.keys = {}
end

function love.keypressed(key)
    --set key to true when pressed
    love.keyboard.keys[key] = true
    --when escape key is pressed exit game
    if key == "escape" then
      love.window.close()
    end
end

function love.update(dt)
    --update from current state
    machine:update(dt)
    --reset keys pressed
    love.keyboard.keys = {}
end

function love.draw()
    --drawing the background
    love.graphics.draw(background, 0, 0)
    ---render from current state
    machine:render()
end
