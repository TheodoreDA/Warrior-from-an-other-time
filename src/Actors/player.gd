extends Actor

export var canMove: = true

func _physics_process(delta):
	if !canMove:
		return
	var is_jump_interrupted: = Input.is_action_just_released("jump") and _velocity.y < 0
	var direction: = get_direction()
	_velocity = calculate_velocity(_velocity, direction, max_speed, is_jump_interrupted)
	_velocity = move_and_slide(_velocity, Vector2.UP)


func get_direction() -> Vector2:
	var direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"), 
		0.0
	)
	if Input.is_action_just_pressed("jump") and is_on_floor():
		direction.y = -1.0
	else:
		direction.y = 1.0
	return direction

func calculate_velocity(
	linear_velocity: Vector2,
	direction: Vector2,
	max_speed: Vector2,
	is_jump_interrupted: bool
) -> Vector2:
	var new_velocity = linear_velocity
	new_velocity.x = max_speed.x * direction.x
	new_velocity.y += gravety * get_physics_process_delta_time()
	if direction.y == -1.0:
		new_velocity.y = max_speed.y * direction.y
	if is_jump_interrupted:
		new_velocity.y = 0.0
	return new_velocity
