extends Node2D

@onready var player_start_position = $Player.position

func _ready():
	BgMusic.play()

func _on_level_reset_area_body_entered(body):
	if body.name == "Player":
		$Player.position = player_start_position
		$LevelResetArea.play_lose_sound()

func _on_level_end_body_entered(body):
	if body.name == "Player":
		$LevelEnd.play_level_complete_sound()
