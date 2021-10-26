extends KinematicBody2D

const speed = 500
var velocity = Vector2()
var direction = -1

func _physics_process(delta):
	velocity.x = speed * delta * direction
	translate(velocity)
	if Input.is_action_pressed("up"):
		queue_free()

func _on_Timer_timeout():
	queue_free()
