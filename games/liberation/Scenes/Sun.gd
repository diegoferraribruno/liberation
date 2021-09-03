extends Node2D

func _process(delta):
	position.y -= 5*delta
	if position.y < -2000:
		position.y = 2000
