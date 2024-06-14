extends CharacterBody2D



		


func _on_detection_body_entered(body):
	if body.name == "player":
		$AnimationPlayer.play("infinity")

func _on_infinity_body_entered(body):
	if body.name == "player":
		get_parent().queue_free()
