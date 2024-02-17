extends CharacterBody2D

var speed = 100

func ready():
	pass

func _physics_process(delta):
	velocity.y += speed * delta
	
	var motion = velocity * delta
	move_and_collide(motion)
	
	if is_on_floor():
		velocity.y = 0

