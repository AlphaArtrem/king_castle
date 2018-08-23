--[[
function to detect collison between to objects given they have
self.x, self.y, self.height and self.width as member variables
]]

function collisionSingle(ob1, ob2)
    --check if collision happened with the left side
    left = (ob1.x + ob1.width < ob2.x or ob1.y + ob1.height < ob2.y)
    --check if collsion happend with the right side
    right = (ob2.x + ob2.width < ob1.x or ob2.y + ob2.height < ob1.y)
    --if any collsion happende return true else false
    if (left) or (right) then
        return false
    else
        return true
    end
end

function collisionMulti(ob1, ob2)
    --[[
    check for alls stars
    do not index for height of width as they are not in stars but in the object
    ]]
    for k, ob in pairs(ob1.stars) do
        --check if collision happened with the left side
        left = (ob.x + ob1.width < ob2.x or ob.y + ob1.height < ob2.y)
        --check if collsion happend with the right side
        right = (ob2.x + ob2.width < ob.x or ob2.y + ob2.height < ob.y)
        --if any collsion happende return true else false
        if (left) or (right) then
            return false
        else
            return true
        end
    end
end
