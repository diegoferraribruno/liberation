extends Camera2D

onready var player = $"../Liberation/YSort/Player"

func _ready():
	position = player.position

func _process(delta):
	position = player.position
