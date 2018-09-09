extends MeshInstance
var rotation_speed = 180.0

func _ready():
	set_process(true) # This tells Godot to call _process() every frame

func _process(delta):
	set_rot(() + delta * rotation_speed)
