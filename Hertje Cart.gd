extends KinematicBody2D

export (int) var speed = 400
export (int) var jump_speed = -1100
export (int) var gravity = 2500
var velocity = Vector2.ZERO

func _physics_process(delta):
	velocity.x = (velocity.x * 0) + speed
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_pressed("up") and is_on_floor():
		velocity.y = jump_speed
	if is_on_wall():
		respawn()

func respawn():
	get_tree().reload_current_scene()
