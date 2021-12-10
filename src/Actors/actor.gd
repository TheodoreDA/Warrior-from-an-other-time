extends KinematicBody2D
class_name Actor

export var gravety: = 10.0
export var max_speed: = Vector2(300.0, 300.0)
var velocity: = Vector2.ZERO

func _physics_process(delta):
	velocity.y += gravety * delta
	velocity = move_and_slide(velocity)
