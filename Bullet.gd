extends Area2D

const speed = 500
var velocity = Vector2()
var direction = 1

func _physics_process(delta):
	velocity.x = speed * delta * direction
	translate(velocity)



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_fireball_body_entered(body):
	if "Enemy" in body.name:
		body.queue_free()

func set_bullet_direction(dir):
	direction = dir
	if dir == -1:
			$Sprite.flip_h = false
	if dir == 1:
			$Sprite.flip_h = true
