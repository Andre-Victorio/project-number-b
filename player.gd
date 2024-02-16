extends CharacterBody2D



func _physics_process(_delta):
	var last_flip = $BigHatPlayer.flip_h
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction.x > 0:
		$BigHatPlayer.flip_h = true
		last_flip = $BigHatPlayer.flip_h
	elif direction.x < 0:
		$BigHatPlayer.flip_h = false
		last_flip = $BigHatPlayer.flip_h
	else:
		$BigHatPlayer.flip_h = last_flip
	velocity = direction * 200
	
	move_and_slide()
