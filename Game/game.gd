extends Node2D

enum Animal {
	Blahaj,
	Rats,
	Bocchi
}

var killed_animal_count = {
	Animal.Blahaj: 0,
	Animal.Rats: 0,
	Animal.Bocchi: 0
}

func handle_animal_interaction(animal):
	killed_animal_count[animal] += 1
	
	while (killed_animal_count == 2):
		killed_animal_count[animal] -= 2;
		if (animal != Animal.Blahaj):
			add_child(get_larger_animal(animal))

func get_larger_animal(animal):
	pass

