extends Sprite
func _ready():
	scale.x = 3
	scale.y = 3
func _process(delta):
	position.x -= 50*delta
	if position.x < -5000:
		position.x = 5000
