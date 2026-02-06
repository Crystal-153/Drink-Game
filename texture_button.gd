extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
signal reset

func _on_pressed() -> void:
	emit_signal("reset")
