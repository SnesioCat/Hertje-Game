extends KinematicBody2D

const speed = 500
var velocity = Vector2()
export var dir = 1

func _physics_process(delta):
	velocity.x = speed * delta * dir
	translate(velocity)



func _on_Area2D_body_entered(body):
	if body.get_name() == "Player" and Globalcharacters.bossmode == false:
		get_tree().change_scene("res://world seven.tscn")
	if body.get_name() == "Player" and Globalcharacters.bossmode == true:
		get_tree().change_scene("res://Tilesets/boss 7.tscn")
