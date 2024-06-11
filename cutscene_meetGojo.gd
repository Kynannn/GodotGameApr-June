extends VideoStreamPlayer


func _ready():
	BgMusic.stop()

#func _physics_process(delta):
	#if Input.is_action_just_pressed("ui_accept"):
		#get_tree().change_scene_to_file("res://main_game.tscn")



func _on_finished():
	get_tree().change_scene_to_file("res://level_markers/level_end/main_game4.tscn")
