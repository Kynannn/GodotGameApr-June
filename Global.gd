extends Node

var speedrun_time = 0
var complete_time = "0"

signal ResetTimer()

func _process(_delta):
	if Input.is_action_just_released("reset"):
		Global.speedrun_time = 0.0
		get_tree().reload_current_scene()
