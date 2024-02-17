extends CharacterBody2D

const SPEED = 300
var is_left = true

const Pig = preload("res://pieces/pig/pig.tscn")
const Otter = preload("res://pieces/otter/otter.tscn")
const Soccat = preload("res://pieces/SOC camp cat/soccat.tscn")
const MasterChief = preload("res://pieces/MasterChief/masterchief.tscn")
const Bocchi = preload("res://pieces/bocchi/bocchi.tscn")
const Rat = preload("res://pieces/rat/rat.tscn")
const Blahaj = preload("res://pieces/Blahaj/blahaj.tscn")

var animalList = [Pig, Pig, Otter, Soccat, Otter, Pig, Soccat, MasterChief, Soccat, Pig, Otter]

var curr_animal_index = 0
var next_animal_to_drop = get_animal()

func _ready():
	add_child(next_animal_to_drop)

func get_animal():
	if (curr_animal_index > 8):
		curr_animal_index = 0
	curr_animal_index += 1
	return animalList[curr_animal_index].instantiate()

func _process(delta):
	pass

func _physics_process(delta):
	velocity = (Vector2.LEFT if is_left else Vector2.RIGHT) * SPEED
	move_and_slide()
	if Input.is_action_just_pressed("down"):
		get_parent().add_child(next_animal_to_drop)
		remove_child(next_animal_to_drop)
		next_animal_to_drop = get_animal()
		add_child(next_animal_to_drop)

func _on_timer_timeout():
	is_left = !is_left #flip direction



func spawn_otter(position):
	var otter = Otter.instantiate()
	otter.set_position(position)
	self.add_child(otter)

func spawn_soccat(position):
	var soccat = Soccat.instantiate()
	soccat.set_position(position)
	self.add_child(soccat)
	
func spawn_masterChief(position):
	var masterChief = MasterChief.instantiate()
	masterChief.set_position(position)
	self.add_child(masterChief)

func spawn_bocchi(position):
	var bocchi = Bocchi.instantiate()
	bocchi.set_position(position)
	self.add_child(bocchi)

func spawn_rat(position):
	var rat = Rat.instantiate()
	rat.set_position(position)
	self.add_child(rat)

func spawn_blahaj(position):
	var blahaj = Blahaj.instantiate()
	blahaj.set_position(position)
	self.add_child(blahaj)
