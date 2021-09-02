extends Node2D

func _process(delta):
	position.y -= 20*delta
	if position.y < -2000:
		position.y = 4200
