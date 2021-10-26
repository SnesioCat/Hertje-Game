extends Node2D

export var next = ("place_holder")

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene(next)
