extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

signal add_drizzle



func _on_pressed() -> void:
	emit_signal("add_drizzle")

var colors=["ffbcabff", "ffc69eff", "ffe89eff", "e7ff9eff", "9effaeff", "9effefff", "9eddffff", "bdc1ffff", "dcbdffff", "ffbde8ff", "d4aa77ff", "241603ff", "120b06ff"]

var i=(colors.size()-1)
func _on_add_drizzle() -> void:
#This previews the next color for the tea!
	if i>=0:
		self.modulate=Color(colors[i-1])
		i-=1
	else:
		self.modulate=Color("ffffffff")
		i=(colors.size()-1)

#resets tje preview when reset is clicked
func _on_reset_button_reset() -> void:
	self.modulate=Color("ffffffff")
	i=(colors.size()-1)
