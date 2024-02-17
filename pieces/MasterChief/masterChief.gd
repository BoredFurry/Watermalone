extends RigidBody2D

func _on_area_2d_body_entered(body):
	if (!body.is_in_group("masterChief")):
		return
	if (position.y > body.position.y):
		self.get_parent().spawn_bocchi(position)
		body.queue_free()
		self.queue_free()
