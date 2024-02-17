extends CharacterBody2D

const SPEED = 600
var is_left = true


func _process(delta):
	velocity = (Vector2.LEFT if is_left else Vector2.RIGHT) * SPEED
	move_and_slide()


func _on_timer_timeout():
	is_left = !is_left #flip direction
