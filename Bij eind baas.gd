extends KinematicBody2D

const GRAVITY = 0
const SPEED = 250
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var direction = 1

func _physics_process(delta):
	$Sprite.flip_h = true
	
	velocity.x = SPEED * direction
	velocity.y += get_position_in_parent()
	velocity = move_and_slide(velocity, FLOOR)


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.respawn()
