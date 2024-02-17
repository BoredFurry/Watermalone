extends Area2D

const SPEED = 400
const DAMAGE = 0

func _ready():
	pass

func _process(delta):
	position += Vector2.DOWN * SPEED * delta
