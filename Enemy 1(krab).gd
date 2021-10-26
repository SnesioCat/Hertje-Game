extends KinematicBody2D


const GRAVITY = 10
const SPEED = 55
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var direction = 1

# warning-ignore:unused_argument
func _physics_process(delta):
	velocity.x = SPEED * direction
	
	if direction -- 1:
		$Sprite.flip_h = false
	else:
		$Sprite.flip_h = true
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity, FLOOR)
	if is_on_wall():
		direction = direction * -1


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.SPRONG()
		queue_free()
	if body.get_name() == "fireball":
		queue_free()


func _on_Area2D2_body_entered(body):
	if body.get_name() == "player":
		body.respawn()
