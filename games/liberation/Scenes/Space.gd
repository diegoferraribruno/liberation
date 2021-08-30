extends RichTextLabel

var url = "https://diegoferraribruno.itch.io/gato-mia-2"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Space_meta_clicked(meta):
	if str(meta).begins_with("http"):
		OS.shell_open(str(meta))


func _on_Area2D_body_entered(body):
	OS.shell_open(url)
	print(body)
	pass # Replace with function body.
