extends Sprite2D

func play_shoot():
	$AnimationPlayer.queue("Kinetic_Bolt_Start")
	$AnimationPlayer.queue("Kinetic_Bolt_Sustain")

func play_explode():
	$AnimationPlayer.stop(false)
	$AnimationPlayer.queue("Explosion_1")


