extends Node2D

var scene = 0

func _physics_process(delta):
	if Input.is_action_just_pressed("up"):
		scene += 1
	if scene == 1:
		$RichTextLabel.set_text("But he was right?... ")
	if scene == 2:
		$RichTextLabel.set_text("Made by Snesio_Cat! I hope you enjoyed the game and thanks to all testers!")
	if scene == 3:
		get_tree().change_scene("res://Mainmenu.tscn")
