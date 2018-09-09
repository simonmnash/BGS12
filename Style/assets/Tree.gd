extends MeshInstance


var fire_scene = load("res://Boxes/Fire.tscn");


func _ready():
	var shader_node = get_tree().get_nodes_in_group("shader")[0];
	self.connect('tree_exited', shader_node, 'increase_pixelation')


# Whenever an area enters the tree, check if it is the player's fire source, and then
# add a child fire to the tree if it is.
func _on_FireRadius_area_shape_entered(area_id, area, area_shape, self_shape):
	if area.get_parent().get_parent().name == "FireSource":
		var scene_instance = fire_scene.instance();
		self.add_child(scene_instance);


# Every 5 seconds, count the number of fires on this tree. If there are more than three,
# destroy the tree. If there are between 1 and 3, add another fire.
func _on_Timer_timeout():
	var children = self.get_children();
	var fire_count = 0;
	for child in children:
		if child.is_in_group("fires"):
			fire_count += 1;
	print(fire_count);
	if fire_count > 3:
		self.queue_free()
	elif fire_count > 0:
		var scene_instance = fire_scene.instance();
		self.add_child(scene_instance);
	
