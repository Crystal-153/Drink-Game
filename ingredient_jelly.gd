extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

signal add_jelly



func _on_pressed() -> void:
	emit_signal("add_jelly")


var colors=["ffbcabff", "ffc69eff", "ffe89eff", "e7ff9eff", "9effaeff", "9effefff", "9eddffff", "bdc1ffff", "dcbdffff", "ffbde8ff", "d4aa77ff", "241603ff", "120b06ff"]

var i=0
func _on_add_jelly() -> void:
	if i<(colors.size()-1):
		self.modulate=Color(colors[i])
		i+=1
	else:
		self.modulate=Color("ffffffff")
		i=0

#resets the preview when rest is clicked
func _on_reset_button_reset() -> void:
	self.modulate=Color("ffffffff")
	i=0
