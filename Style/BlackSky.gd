extends WorldEnvironment

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass


func _on_Timer_timeout():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().change_scene("res://MainMenu.tscn")