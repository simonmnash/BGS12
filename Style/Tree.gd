extends MeshInstance


var fire_scene = load("res://Boxes/Fire.tscn")


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass


func _on_FireRadius_area_shape_entered(area_id, area, area_shape, self_shape):
	if area.get_parent().get_parent().name == "FireSource":
		var scene_instance = fire_scene.instance();
		self.add_child(scene_instance);




func _on_Timer_timeout():
	var children = self.get_children();
	var fire_count = 0;
	for child in children:
		if child.is_in_group("fires"):
			fire_count += 1;
	print(fire_count);
	if fire_count > 4:
		self.queue_free()
	elif fire_count > 0:
		var scene_instance = fire_scene.instance();
		self.add_child(scene_instance);
	
