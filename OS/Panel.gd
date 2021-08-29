extends Panel
var status = false

func _on_Panel2_gui_input(event):
	if Input.is_action_just_pressed("Click") or event is InputEventScreenTouch:
		pass # Replace with function body.

func _on_TouchScreenButton_released():
		var drag = $"../Drag".position.y
		if drag > 50:
			$"../Drag".position.y = 42
			margin_bottom = 42
		else:
			$"../Drag".position.y = 340
			margin_bottom = 340
