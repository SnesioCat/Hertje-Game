extends Node2D

func _physics_process(delta):
	if Input.is_action_pressed("up"):
		get_tree().change_scene("res://Level one.tscn")
