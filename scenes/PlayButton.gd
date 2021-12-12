extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayButton_pressed():
	get_tree().get_root().get_node("Menu/ButtonClickSound").play()
	yield(get_tree().get_root().get_node("Menu/ButtonClickSound"), "finished")
	get_tree().change_scene("res://scenes/FirstSceneMedieval.tscn")

func _on_RetryButton_pressed():
	get_tree().get_root().get_node("Menu/ButtonClickSound").play()
	yield(get_tree().get_root().get_node("Menu/ButtonClickSound"), "finished")
	get_tree().change_scene("res://scenes/FirstSceneMedieval.tscn")

func _on_QuitButton_pressed():
	get_tree().get_root().get_node("Menu/ButtonClickSound").play()
	yield(get_tree().get_root().get_node("Menu/ButtonClickSound"), "finished")
	get_tree().quit()
