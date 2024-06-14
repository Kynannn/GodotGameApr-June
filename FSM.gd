extends Node2D
class_name FSM

var current_state2: State2
var previous_state2: State2
 
func _ready():
	current_state2 = get_child(0) as State2
	previous_state2 = current_state2
	current_state2.enter()
 
func change_state(state):
	current_state2 = find_child(state) as State2
	current_state2.enter()
 
	previous_state2.exit()
	previous_state2 = current_state2
