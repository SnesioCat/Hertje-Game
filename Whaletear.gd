extends KinematicBody2D

var GRAVITY = 330
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

func _physics_process(delta):
	GRAVITY += 0.5
	velocity.y = GRAVITY
	velocity = move_and_slide(velocity, FLOOR)

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.respawn()
