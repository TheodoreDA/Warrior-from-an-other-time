extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var hasBeenPlayed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("RichTextLabel2").set_position(Vector2(get_node("queen").position.x, get_node("RichTextLabel2").get_position().y))
	if (get_node("queen").position.x > 2750 && !hasBeenPlayed):
		get_node("AnimationPlayer").play("Cutscene")
		hasBeenPlayed = true
