extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var jump_count = 0
var max_jumps = 2
var is_dead = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var has_won = false

func _physics_process(delta):
	if is_dead:
		return
	
	if has_won and is_on_floor():
		return
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if is_on_floor():
		jump_count = 0

	if Input.is_action_just_pressed("ui_accept") and jump_count < max_jumps:
		velocity.y = JUMP_VELOCITY
		jump_count += 1
		$jump_sound.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	if has_won:
		return
	
	
		
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("run_left")
	elif Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("run_right")
	else:
		$AnimatedSprite2D.play("idle")

func win():
	has_won = true
	$AnimatedSprite2D.play("win")

func die() -> void:
	print("Die")
	if not is_dead:
		$diemusic.play()
		$AnimatedSprite2D.play("explode")
		is_dead = true
		$ResetLevelTimer.start()
		
#func blueffect() -> void:
	#$".".position.x -= 30
	#$diemusic.play()
	#$ResetLevelTimer.start()


func _on_animated_sprite_2d_animation_finished():
	#if $AnimationTree.tree_root.get_node("die").animation:
		#get_tree().change_scene_to_file("res://main_game.tscn")
		#is_dead = false
	pass


func _on_reset_level_timer_timeout():
	get_tree().change_scene_to_file("res://main_game.tscn")
