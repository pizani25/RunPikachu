extends RigidBody2D



func _ready():
	set_process_input(true)
	
func _input(event) :
	if event.is_action_pressed("touch"):
		if position.y >= 1320:
			on_touch()
		else:
			pass 

func on_touch():
	apply_impulse(Vector2(0, 0), Vector2(0, -1500))