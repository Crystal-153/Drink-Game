extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
@onready var addedBoba=$addedBoba

func _on_ingredient_boba_add_boba() -> void:
	addedBoba.visible = true
