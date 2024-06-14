extends CharacterBody2D

@onready var ray_cast = $RayCast2D
@onready var player = get_parent().find_child("player")

var direction = Vector2.RIGHT

func _process(_delta):
	direction = (player.position- global_position).normalized()
	ray_cast.target_position = direction * 100
