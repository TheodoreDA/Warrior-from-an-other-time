extends Node2D

var health = 3 setget update_bars

func _ready():
	self.health = 3
	get_node("TileMap/enemy").connect("player_spotted", self, "take_damage")
	get_node("TileMap/enemy2").connect("player_spotted", self, "take_damage")
	get_node("TileMap/enemy3").connect("player_spotted", self, "take_damage")


func _process(delta):
	get_node("health_bar").rect_position.x = get_node("queen").position.x - 700
	get_node("health_bar").rect_position.y = get_node("queen").position.y - 450


func take_damage():
	if self.health == 1:
		get_tree().change_scene("res://scenes/GameOver.tscn")
	self.health -= 1


func update_bars(value):
	health = value
	get_node("health_bar").update_health(health)
