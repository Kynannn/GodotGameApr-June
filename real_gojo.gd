extends Area2D



func _on_infinityattack_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()


func _on_infinitydetec_body_entered(body):
	if body.name == "Player":
		$AnimationPlayer.play("infinity")



func _on_bluedetec_body_entered(body):
	if body.name == "Player":
		$AnimationPlayer.play("blue")
		body.play("blueffect")
		
