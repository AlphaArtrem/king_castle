--creating class for state machine
machine = class{}

--intialising machine class with states passed in main
function machine:init(states)
    self.states = states or false
    self.current = false
end

--changing state
function machine:change(state)
    self.current = self.states[state]()
end

--update using current state update function
function machine:update(dt)
    self.current:update(dt)
end

--redering using current state render function
function machine:render()
    self.current:render()
end
