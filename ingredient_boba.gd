extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

signal add_Boba
	

func _on_pressed() -> void:
	emit_signal("add_Boba")


var cursorBoba=preload("res://cursors/pixil-layer-0.png")
func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(cursorBoba,Input.CURSOR_ARROW,Vector2(16, 16))


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(null)
