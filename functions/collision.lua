--[[
function to detect collison between to objects given they have
self.x, self.y, self.height and self.width as member variables
]]

function collisionCastle(castle, crown)
    --check if collision happened with the left side
    left = (castle.x + castle.width < crown.x or castle.y + castle.height < crown.y)
    --check if collsion happend with the right side
    right = (crown.x + crown.width < castle.x or crown.y + crown.height < castle.y)
    --if any collsion happende return true else false
    if (left) or (right) then
        return
    else
        --if collided with castle increase level
        level = level + 1
        --then change state to new play
        machine:change("play")
    end
end

--function for detecting collison with stars
function collisionStars(stars, c, type)
    --[[
    check for alls stars
    do not index for height of width as they are not in stars but in the object
    ]]
    for k, star in pairs(stars.stars) do
        --if the star is touching crown or castle boundary reverse its direction
        x = star.x > c.x + c.width or star.x + stars.width < c.x + 20
        y = star.y > c.y + c.height or star.y + stars.height < c.y
        if x then
            ::continue::
        elseif y then
            ::continue::
        else
            --negate star direction
            star.dx = -star.dx
            --if collided with crown decrease health
            if type == "crown" then
              health = health - 1
            end
      end
    end
end
