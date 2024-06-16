extends Area2D

 
@onready var ray_cast = $RayCast2D
@onready var timer = $Timer
@export var ammo : PackedScene
 
var Player
 

func _on_reddetec_body_entered(_body):
	Player = get_parent().find_child("Player")

func _physics_process(_delta):
	_aim()
	_check_player_collision()
 
func _aim():
	ray_cast.target_position = to_local(Player.position)
 
func _check_player_collision():
	if ray_cast.get_collider() == Player and timer.is_stopped():
		timer.start()
	elif ray_cast.get_collider() != Player and not timer.is_stopped():
		timer.stop()
 
 
func _on_timer_timeout():
	_shoot()
 
func _shoot():
	var bullet = ammo.instantiate()
	bullet.position = position
	bullet.direction = (ray_cast.target_position).normalized()
	get_tree().current_scene.add_child(bullet)


func _on_infinityattack_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()


func _on_infinitydetec_body_entered(body):
	if body.name == "Player":
		$AnimationPlayer.play("infinity")

func _on_infinitydetec_body_exited(body):
	if body.name == "Player":
		$AnimationPlayer.play("idle")


func _on_bluedetec_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$AnimationPlayer.play("blue")
	if body.has_method("blueffect"):
		body.blueffect()
	
func _on_bluedetec_body_exited(body):
	if body.name == "Player":
		$AnimationPlayer.play("infinity")
		

