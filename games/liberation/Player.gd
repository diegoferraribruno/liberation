extends KinematicBody2D
# Liberation Player
var speed = 10000
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction1 = Vector2(0,0)
	var direction2 = Vector2(0,0)
	if Input.is_action_pressed("ui_right"):
		direction1.x = 1
		$Visual.scale.x = -1
	if Input.is_action_pressed("ui_left"):
		direction2.x = -1
		$Visual.scale.x = 1
	if Input.is_action_pressed("ui_up"):
		direction1.y = -1
	if Input.is_action_pressed("ui_down"):
		direction2.y = 1
	var go = Vector2(direction1+direction2)*delta*speed
	move(go)
	
func move(go):
	move_and_slide(go)

func _on_RichTextLabel3_meta_clicked(meta):
	print("got me")
	pass # Replace with function body.

func _on_RichTextLabel3_gui_input(event):
	if Input.is_action_pressed("Click"):
		position =  get_global_mouse_position() + Vector2(0,40)
	else:
		pass
	pass # Replace with function body.
