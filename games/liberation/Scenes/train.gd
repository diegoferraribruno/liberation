extends KinematicBody2D
var variant = 10
func _process(delta):
	position.x += variant
	if position.x > 2000:
		variant = -6
	if position.x < -2000:
		variant = 6
