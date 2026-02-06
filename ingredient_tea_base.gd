extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

signal add_tea


var colors=["ffbcabff", "ffc69eff", "ffe89eff", "e7ff9eff", "9effaeff", "9effefff", "9eddffff", "bdc1ffff", "dcbdffff", "ffbde8ff", "d4aa77ff", "241603ff", "120b06ff"]

func _on_pressed() -> void:
	emit_signal("add_tea")
	

var i=(colors.size()-1)
#This previews the next color for the tea!
func _on_add_tea() -> void:
	if i>=0:
		self.modulate=Color(colors[i-1])
		i-=1
	else:
		self.modulate=Color("ffffffff")
		i=(colors.size()-1)
