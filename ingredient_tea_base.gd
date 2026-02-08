extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cursorTea.visible=false

signal add_tea
@onready var cursorTea= $cursor
var cursor=false
var colors=["ffbcabff", "ffc69eff", "ffe89eff", "e7ff9eff", "9effaeff", "9effefff", "9eddffff", "bdc1ffff", "dcbdffff", "ffbde8ff", "d4aa77ff", "241603ff", "120b06ff"]

func _process(_delta: float) -> void:
	if cursor==true:
		cursorTea.global_position=get_viewport().get_mouse_position()

func _on_pressed() -> void:
	emit_signal("add_tea")
	

var i=(colors.size()-1)
#This previews the next color for the tea!
func _on_add_tea() -> void:
	if i>=0:
		cursorTea.modulate=Color(colors[i-1])
		self.modulate=Color(colors[i-1])
		i-=1
	else:
		cursorTea.modulate=Color("ffffffff")
		self.modulate=Color("ffffffff")
		i=(colors.size()-1)

#resets the preview when reset button is clicked
func _on_reset_button_reset() -> void:
	self.modulate=Color("ffffffff")
	i=(colors.size()-1)




func _on_mouse_entered() -> void:
	cursor=true
	cursorTea.visible=true
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)



func _on_mouse_exited() -> void:
	cursor=false
	cursorTea.visible=false
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
