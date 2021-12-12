extends HBoxContainer


var heart_full = preload("res://assets/Basic/PNG/HUD/hudHeart_full.png")
var heart_empty = preload("res://assets/Basic/PNG/HUD/hudHeart_empty.png")


func update_health(value):
	for i in get_child_count():
		if value > i:
			get_child(i).texture = heart_full
		else:
			get_child(i).texture = heart_empty
