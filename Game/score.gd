extends Panel


var points = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.text = str(points)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass # Replace with function body.
