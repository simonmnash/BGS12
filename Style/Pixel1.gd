extends TextureRect

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var pixelation = 0.001
func _ready():
	self.material.set_shader_param("size_x", pixelation)
	self.material.set_shader_param("size_y", pixelation)


func increase_pixelation():
	print("pixel")
	pixelation *= 5.00;
	self.material.set_shader_param("size_x", pixelation)
	self.material.set_shader_param("size_y", pixelation)
