extends Node

export var Score=0
export var Lives=3

func increase_score(s):
	Score += int(s)
	find_node("Score").update_score()
	
func decrease_lives():
	Lives = Lives -1
	find_node("Lives").update_lives()
	if Lives<=0:
		get_tree().change_scene("res://Scenes/End.tscn")
		
	