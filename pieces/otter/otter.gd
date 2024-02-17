extends RigidBody2D

func _on_area_2d_body_entered(body):
	if (!body.is_in_group("otter")):
		return
	if (position.y > body.position.y):
		self.get_parent().spawn_soccat(position)
		body.queue_free()
		self.queue_free()
	elif (position.y == body.position.y):
		if (position.x > body.position.x):
			self.get_parent().spawn_soccat(position)
			body.queue_free()
			self.queue_free()
