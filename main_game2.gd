extends Node2D
@onready var player_start_position = $Player.position

# Called when the node enters the scene tree for the first time.
func _ready():
	BgMusic.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_wenbi_body_entered(body):
	if body.name == "Player":
		$Player.position = player_start_position
		$LevelResetArea.play_lose_sound()



func _on_level_reset_area_body_entered(body):
	if body.name == "Player":
		$Player.position = player_start_position
		$LevelResetArea.play_lose_sound()

