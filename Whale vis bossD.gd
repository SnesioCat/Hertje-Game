extends KinematicBody2D

const grav = 10
const Floor = Vector2(0, -1)
const SPEED = 30

var velocity = Vector2()

var Direction = 1

func _ready():
	pass
	
func _physics_process(delta):
	velocity.x = SPEED * Direction
	
	velocity.y += grav
	
	velocity = move_and_slide(velocity, Floor)  
	
	if is_on_wall():
		Direction = Direction * -1
