extends Area2D

func _input(event):
	if event.is_action_pressed("ui_accept"):
		if get_overlapping_bodies().size() == 1:
			if get_tree().get_current_scene().get_name() == "FirstSceneMedieval":
				get_tree().change_scene("res://scenes/SecondSceneAntiquity.tscn")
			if get_tree().get_current_scene().get_name() == "SecondSceneAntiquity":
				get_tree().change_scene("res://scenes/ThirdSceneIndustrial.tscn")
			if get_tree().get_current_scene().get_name() == "ThirdSceneIndustrial":
				get_tree().change_scene("res://scenes/FourthScenePlanet.tscn")
			if get_tree().get_current_scene().get_name() == "FourthScenePlanet":
				get_tree().change_scene("res://scenes/MainMenu.tscn")
