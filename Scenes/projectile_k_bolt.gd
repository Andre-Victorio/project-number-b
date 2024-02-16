extends Area2D

var travel_distance = 0

func _physics_process(delta):
	const SPEED = 450
	const RANGE = 600
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * SPEED * delta
	$KineticBolt.play_shoot() 
	travel_distance += SPEED * delta
	if travel_distance>RANGE:
		queue_free()
