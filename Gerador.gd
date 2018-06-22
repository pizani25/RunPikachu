extends Position2D

onready var cano = preload("res://voltorb.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	var novocano = cano.instance()
	novocano.set_position(get_position() + Vector2(0,150))  #150 original 
	get_owner().add_child(novocano)