extends Node2D



func _on_Timer_timeout():
	if Globalcharacters.bossmode == false:
		get_tree().change_scene("res://World 5 (caves).tscn")
	elif Globalcharacters.bossmode == true:
		get_tree().change_scene("res://Boss 5.tscn")
