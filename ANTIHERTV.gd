extends KinematicBody2D


const GRAVITY = -0.5
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

func _physics_process(delta):
	
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity, FLOOR)

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene("res://Menudectichted.tscn")
