extends TouchScreenButton

func _input(event):
	if event == InputEventScreenDrag or (event == InputEventScreenTouch and event.is_pressed()):
		set_global_position(event.position)
		
