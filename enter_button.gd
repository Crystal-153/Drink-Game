extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

signal enter

func _on_pressed() -> void:
	emit_signal("enter")
	get_tree().change_scene_to_file("res://main_scene.tscn")
