extends Camera2D

onready var player = $"../Liberation/YSort/Player"

func _ready():
	position = player.position + Vector2(0,100)

func _process(delta):
	position = player.position - Vector2(0,40)

