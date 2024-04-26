extends Control


func _ready():
	$AudioStreamPlayer.play()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
