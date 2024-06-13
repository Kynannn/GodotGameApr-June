extends Node2D

@onready var player_start_position = $Player.position

#get_viewport().canvas_transform = Transform2D.IDENTITY

func _ready():
	FightMusic.play()
	BgMusic.stop()



func _on_level_reset_area_body_entered(body):
	if body.name == "Player":
		$Player.position = player_start_position
		$LevelResetArea.play_lose_sound()

func _on_level_end_body_entered(body):
	if body.name == "Player":
		$LevelEnd.play_level_complete_sound()


		
#func _on_spike_body_entered(body):
	#if body.name == "Player":

