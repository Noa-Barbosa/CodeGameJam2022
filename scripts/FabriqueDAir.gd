extends Node2D

signal timeout

const TIME_PERIOD = 5 # 500ms

var hasBulle = false

var time = 500

func _process(delta):
	if time== 500 && !hasBulle:
		time = 0
		hasBulle = true
		var posx = self.position.x 
		var posy = self.position.y - 75
		var ressource = load("scenes/BulleFabAir.tscn").instance()
		ressource.transform = Transform2D(0, Vector2(posx,posy))
		get_tree().get_root().get_child(0).add_child(ressource)
	elif time>500 :
		time = 500
	else:
		time += 1

