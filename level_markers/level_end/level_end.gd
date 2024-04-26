extends Area2D

var level_time = 0
var sound = false

func play_level_complete_sound():
	 
	Global.complete_time = Global.speedrun_time
	
	if sound == false:
		$win_music.play()
		sound = true


func _on_win_music_finished():
	get_tree().quit()


func _on_body_entered(body):
	if body.name == "Player":
		print("Player wins")
		body.win()
