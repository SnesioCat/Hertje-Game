extends KinematicBody2D

onready var sprite = get_node("Sprite")
var koe = preload("res://Koe.png")
export (int) var speed = 800
export (int) var jump_speed = -1000
export (int) var gravity = 3000
var velocity = Vector2.ZERO
var jumpcount = 0
var ON_VINE = false
var upspeed = 200


func get_input():
	velocity.x = 0
	if Input.is_action_pressed("Right"):
		velocity.x += speed
	if Input.is_action_pressed("Left"):
		velocity.x -= speed


func respawn():
	get_tree().reload_current_scene()
	Globalcharacters.koelives -= 1

func _physics_process(delta):
	if Globalcharacters.koe == true:
		sprite.set_texture(koe)
		$Label.visible = true
		if Globalcharacters.koelives == 3:
			$Label.text = ("Lives: 3")
		if Globalcharacters.koelives == 2:
			$Label.text = ("Lives: 2")
		if Globalcharacters.koelives == 1:
			$Label.text = ("Lives: 1")
		if Globalcharacters.koelives == 0:
			get_tree().change_scene("res://GAMEOVER.tscn")
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("up"):
		if is_on_floor():
			velocity.y = upspeed
			
	get_input()
	if jumpcount <100000000000:
		if Input.is_action_just_pressed("up"):
			jumpcount += 1
			velocity.y += gravity * delta
			velocity = move_and_slide(velocity, Vector2.UP)
			velocity.y = jump_speed
	if Input.is_action_pressed("mainmenu"):
		get_tree().change_scene("res://Mainmenu.tscn")
	if is_on_floor():
		jumpcount = 0
func SPRONG():
	velocity.y+=jump_speed
	move_and_slide(velocity, Vector2(0,-1))
