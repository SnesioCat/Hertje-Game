extends KinematicBody2D

onready var sprite = get_node("Sprite")
var koe = preload("res://Koe.png")


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
	var y = position.y
	var mouse = get_global_mouse_position().x
	set_position(Vector2(mouse, y))
	if Input.is_action_pressed("mainmenu"):
		get_tree().change_scene("res://Mainmenu.tscn")

func respawn():
	get_tree().reload_current_scene()
	Globalcharacters.koelives -= 1
