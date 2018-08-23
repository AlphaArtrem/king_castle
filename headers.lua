--class header file
class = require "class"

--for crown
require "classes/crown"
--for castle
require "classes/castle"
--for star
require "classes/star"

--getting state machine
require "state_machine/machine"
--for title state
require "state_machine/states/title"
--for base state
require "state_machine/states/base"
--for play state
require "state_machine/states/play"

--function for collision
require "functions/collision"

--global variables
level = 1
health = 3
