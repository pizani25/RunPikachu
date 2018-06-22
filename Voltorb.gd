extends Node2D

export var velocidade = -400
var cena 

func _ready():
	set_process(true)
	cena = get_tree().get_current_scene()
	
func _process(delta):
	set_position(get_position() + Vector2(velocidade * delta, 0))
	
	if get_position().x < -100:
		queue_free()

func _on_Area2D_body_entered(body):
	if body.get_name() == "Pikachu":
		cena.kill()

func _on_Area2D2_body_entered(body):
	cena.pontuar()
