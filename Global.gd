extends Node

var speedrun_time = 0
var complete_time = "0"
var best_time = 999999999999999

signal ResetTimer()

func _process(_delta):
	if Input.is_action_just_released("reset"):
		Global.speedrun_time = 0.0
		get_tree().change_scene_to_file("res://main_game.tscn")
