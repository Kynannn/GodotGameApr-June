extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	%FinalTime.text = str(Global.speedrun_time) + " seconds"
	Global.speedrun_time = 0
	FightMusic.stop()
	BgMusic.stop()
	FinalTimeMusic.play()




func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
