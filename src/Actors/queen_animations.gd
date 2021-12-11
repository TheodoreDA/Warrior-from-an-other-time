extends AnimatedSprite

func _physics_process(delta):
	if Input.get_action_strength("move_right"):
		flip_h = false
	if Input.get_action_strength("move_left"):
		flip_h = true
	if Input.get_action_strength("move_right"):
		self.animation = "walk"
	if Input.get_action_strength("move_left"):
		self.animation = "walk"
	if Input.is_action_just_released("move_left"):
		self.animation = "idle"
	if Input.is_action_just_released("move_right"):
		self.animation = "idle"
