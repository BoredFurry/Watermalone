extends Node2D

func _on_area_2d_area_entered(area):
	if area.name == "AreaRats":
		print("add score")
		#self.get_parent().addScore()
	self.queue_free()
