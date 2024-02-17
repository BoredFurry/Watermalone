extends Node2D

const Pig = preload("res://pieces/pig/pig.tscn")
const Otter = preload("res://pieces/otter/otter.tscn")
const Soccat = preload("res://pieces/SOC camp cat/soccat.tscn")
const MasterChief = preload("res://pieces/MasterChief/masterchief.tscn")
const Bocchi = preload("res://pieces/bocchi/bocchi.tscn")
const Rat = preload("res://pieces/rat/rat.tscn")
const Blahaj = preload("res://pieces/Blahaj/blahaj.tscn")  

func spawn_otter(position):
	var otter = Otter.instantiate()
	otter.set_position(position)
	self.add_child(otter)

func spawn_soccat(position):
	var soccat = Soccat.instantiate()
	soccat.set_position(position)
	self.call_deferred("add_child", soccat)
	
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


# create
