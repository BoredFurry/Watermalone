extends CharacterBody2D

var gravity = 100

func ready():
	pass

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	
	var motion = velocity * delta
	move_and_collide(motion)
	
	move_and_slide()
