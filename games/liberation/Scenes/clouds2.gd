extends Sprite
#222222

func _ready():
	scale.x = 1
	scale.y = 1
	
func _process(delta):
	position.x -= 30*delta
	if position.x < -5000:
		position.x = 5000
