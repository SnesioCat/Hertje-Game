extends KinematicBody2D


const SPEED = 150
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var direction = -1
func _physics_process(delta):
	velocity.x = SPEED * direction
	
	velocity = move_and_slide(velocity, FLOOR)
	if is_on_wall():
		direction = direction * -1


func _on_Area2D_body_entered(body):
	if body.get_name() == "Flying hert kat":
		get_tree().change_scene("res://factory boss battle room.tscn")
