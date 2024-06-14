extends VideoStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	BgMusic.stop()

func _physics_process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://main_game.tscn")
	
func _on_finished():
	get_tree().change_scene_to_file("res://main_game.tscn")
