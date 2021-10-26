extends KinematicBody2D



func _on_Area2D_body_entered(body):
	if body.get_name() == "Player" and Globalcharacters.bossmode == false:
		get_tree().change_scene("res://factory 1.tscn")
	elif body.get_name() == "Player" and Globalcharacters.bossmode == true:
		get_tree().change_scene("res://factory boss battle room.tscn")
