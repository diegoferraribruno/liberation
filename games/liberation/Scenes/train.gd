extends KinematicBody2D
var variant = 6
var speed = 1
var trail = 4096
func _process(delta):
	position.x += variant*speed
	if position.x > trail:
		variant = 0
		$"AudioStreamPlayer2D".stop()
		yield(get_tree().create_timer(3),"timeout")
		$"AudioStreamPlayer2D".play()
		variant = -6
	if position.x < -trail:
		variant = 0
		$"AudioStreamPlayer2D".stop()
		yield(get_tree().create_timer(3),"timeout")
		$"AudioStreamPlayer2D".play()
		variant = 6
	if position.x > -256 and position.x <300:
		speed = lerp(speed,0.2,delta*3)
		$"AudioStreamPlayer2D".pitch_scale = 0.3
		$"AudioStreamPlayer2D".volume_db = -28
	else:
		speed = lerp(speed,1,delta*3)
		$"AudioStreamPlayer2D".volume_db = -22
		$"AudioStreamPlayer2D".pitch_scale = 0.33
#		speed = 1
