extends AnimatedSprite

func _ready():
	connect("animation_finished", self, "knight_on_animation_finished")

func _physics_process(delta):
	if Input.get_action_strength("move_right"):
		flip_h = false
	if Input.get_action_strength("move_left"):
		flip_h = true
	if Input.get_action_strength("attack") and self.animation == "jump" and self.animation != "jump attack":
		self.animation = "jump attack"
		return
	if Input.get_action_strength("attack") and self.animation != "jump" and self.animation != "jump attack":
		self.animation = "attack"
		return
	if Input.get_action_strength("jump") and self.animation != "attack" and self.animation != "jump attack":
		self.animation = "jump"
		return
	if Input.get_action_strength("move_right") and self.animation != "attack" and self.animation != "jump" and self.animation != "jump attack":
		self.animation = "walk"
	if Input.get_action_strength("move_left") and self.animation != "attack" and self.animation != "jump" and self.animation != "jump attack":
		self.animation = "walk"
	if Input.is_action_just_released("move_left") and self.animation != "attack" and self.animation != "jump" and self.animation != "jump attack":
		self.animation = "idle"
	if Input.is_action_just_released("move_right") and self.animation != "attack" and self.animation != "jump" and self.animation != "jump attack":
		self.animation = "idle"

func knight_on_animation_finished():
	if self.animation == "attack":
		self.animation = "idle"
	if self.animation == "jump":
		self.animation = "idle"
	if self.animation == "jump attack":
		self.animation = "idle"
