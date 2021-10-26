extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "FLYKATHERTFREE":
			get_tree().change_scene("res://Tilesets/boss 7.tscn")
