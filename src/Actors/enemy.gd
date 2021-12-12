extends Actor

signal player_spotted
export var going_left: = true

func _ready():
	set_physics_process(false)
	if going_left:
		_velocity.x = -max_speed.x
	else:
		_velocity.x = max_speed.x

func _physics_process(delta):
	_velocity.y += gravety * delta
	if is_on_wall():
		_velocity.x *= -1.0
	if _velocity.x > 0:
		get_node("AnimatedSprite").flip_h = true
	else:
		get_node("AnimatedSprite").flip_h = false
	_velocity.y = move_and_slide(_velocity, Vector2.UP).y


func _on_Area2D_body_entered(body):
	emit_signal("player_spotted")
