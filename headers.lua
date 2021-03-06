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
--for new level title
require "state_machine/states/state"
--for when dead
require "state_machine/states/death"

--function for collision
require "functions/collision"
