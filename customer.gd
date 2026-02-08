extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	drink.visible=false
	var tween=get_tree().create_tween()
	tween.tween_property(self, "position", Vector2(575.5,330),1).set_trans(Tween.TRANS_LINEAR)
	await tween.finished
	drink.visible=true
@onready var happy=$happyFace
@onready var mid=$midFace
@onready var sad = $sadFace
@onready var drink=$order
func _on_node_customer_load() -> void:
	drink.visible=false
	var tween=get_tree().create_tween()
	tween.tween_property(self, "position", Vector2(575.5,648),1).set_trans(Tween.TRANS_LINEAR)
	tween.tween_interval(2.0)
	await tween.finished
	tween=get_tree().create_tween()
	happy.visible=false
	mid.visible=false
	sad.visible=false
	
	tween.tween_property(self, "position", Vector2(575.5,330),1).set_trans(Tween.TRANS_LINEAR)
	await tween.finished
	drink.visible=true
