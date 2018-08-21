play = class{__include = base}

function play:init(dx,dy,level)
    --getting crown and castle class
    self.crown = crown()
    self.castle = castle()

    --current play level
    self.level = level or 1

    --getting stars
    self.star = star(self.level)
end

function play:update(dt)
      --updating crown for movement
      self.crown:update(dt)

      --updating stars
      self.star:update(dt)
end

function play:render()
    --rendering both crown and castle
    self.crown:render()
    self.castle:render()

    --rendering stars
    self.star:render()
end
