extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://cutscene_opening.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://options.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://creds.tscn")



func _on_how_2_play_pressed():
	get_tree().change_scene_to_file("res://how_2_play.tscn")
