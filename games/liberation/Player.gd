extends KinematicBody2D

var speed = 200
var friction = 0.1
var acceleration = 0.07
var velocity = Vector2.ZERO
var drag := false
func _physics_process(delta):
	var input_velocity = Vector2.ZERO
	# Check input for "desired" velocity
	if Input.is_action_pressed("ui_right"):
		input_velocity.x += 1
		$"Visual".scale.x = -1
	if Input.is_action_pressed("ui_left"):
		input_velocity.x -= 1
		$"Visual".scale.x = 1
	if Input.is_action_pressed("ui_down"):
		input_velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		input_velocity.y -= 1
	input_velocity = input_velocity.normalized() * speed
#		position =  lerp(position,get_global_mouse_position()-position-Vector2(36,36),delta)
	if drag == true:
		input_velocity = lerp( get_global_mouse_position() - position - Vector2(-32,-85),get_global_mouse_position(),-0.1).normalized() *speed
		 
	# If there's input, accelerate to the input velocity
	if input_velocity.length() > 0:
		velocity = velocity.linear_interpolate(input_velocity, acceleration)
	else:
		  # If there's no input, slow down to (0, 0)
		velocity = velocity.linear_interpolate(Vector2.ZERO, friction)
	velocity = move_and_slide(velocity)

func _on_RichTextLabel3_meta_clicked(meta):
	print("got me")
	pass # Replace with function body.

func _on_RichTextLabel3_gui_input(event):
	if Input.is_action_pressed("Click"):
		drag = true
#		move_and_slide(position)
	else:
		drag = false
		pass
	pass # Replace with function body.
