extends KinematicBody2D

var phase3 = false
var phase2 = false
const speed = 500
var velocity = Vector2()
var direction = 1

func _physics_process(delta):
	if phase2 == true:
		velocity.x = speed * delta * direction
		translate(velocity)

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.respawn()


func _on_Timer_timeout():
	phase2 = true
	
	
