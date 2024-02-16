extends Area2D


func _physics_process(_delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction.length()>0:
		direction = direction.normalized()
	var target_position = global_position + direction
	look_at(target_position)


func shoot():
	const KBOLT = preload("res://Scenes/projectile_k_bolt.tscn")
	var new_proj = KBOLT.instantiate()
	
	new_proj.global_position = %projectileSpawn.global_position
	new_proj.global_rotation = %projectileSpawn.global_rotation
	%projectileSpawn.add_child(new_proj)
	
	


func _on_timer_timeout():
	shoot()
