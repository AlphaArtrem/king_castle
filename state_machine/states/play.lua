play = class{__include = base}

function play:init(dx,dy)
    --getting crown and castle class
    self.crown = crown()
    self.castle = castle()
end

function play:update(dt)
      --updating crown for movement
      self.crown:update(dt)
end

function play:render()
    --rendering both crown and castle
    self.crown:render()
    self.castle:render()
end
