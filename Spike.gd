extends Area2D

#@export var num_spikes = 3
#@export var spike_sprite: Texture


#func _ready():
#	for x in range(num_spikes):
#		var spike_sprite = Sprite2D.new()
#		spike_sprite.texture = ResourceLoader.load("res://_pixel_adventure_1/Free/Traps/Spikes/Idle.png")
#		add_child(spike_sprite)
#		
#	$CollisionShape2D.position.x += 16 * num_spikes
#	$CollisionShape2D.scale.x = num_spikes


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("die"):
		body.die()
