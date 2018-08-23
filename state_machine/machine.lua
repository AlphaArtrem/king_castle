--creating class for state machine
machine = class{}

--intialising machine class with states passed in main
function machine:init(states)
    self.states = states or false
    self.current = false
end

--changing state
function machine:change(state,params)
    self.current = self.states[state]()
    if params then
      self.current:init(params)
    end
end

--update using current state update function
function machine:update(dt)
    self.current:update(dt)
end

--redering using current state render function
function machine:render()
    self.current:render()
end
