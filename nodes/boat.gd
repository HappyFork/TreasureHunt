extends RigidBody2D


@export var speed = 10.0
@export var max_speed = 300.0
@export var trawl_speed = 50.0


func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if abs( linear_velocity.length() ) < max_speed:
		apply_central_impulse( direction * speed )
	
	if Input.is_action_just_pressed("trawl") and abs( linear_velocity.length() ) <= trawl_speed:
		sleeping = true
