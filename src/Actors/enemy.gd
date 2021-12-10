extends Actor

func _ready():
	set_physics_process(false)
	_velocity.x = -max_speed.x

func _physics_process(delta):
	_velocity.y += gravety * delta
	if is_on_wall():
		_velocity *= -1.0
	_velocity.y = move_and_slide(_velocity, Vector2.UP).y
