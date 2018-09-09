extends MeshInstance


var fire_scene = load("res://Boxes/Fire.tscn")


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_FireRadius_area_shape_entered(area_id, area, area_shape, self_shape):
	print(area.get_parent().get_parent().name)
	if area.get_parent().get_parent().name == "FireSource":
		var scene_instance = fire_scene.instance()
		self.add_child(scene_instance)


