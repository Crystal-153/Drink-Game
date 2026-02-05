extends Node2D

var counterBoba=0
var counterTea=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
@onready var boba = $addedBoba

#when player clicks the boba sprite is toggled on and off :DDDD
func _on_ingredient_boba_add_boba() -> void:
	if counterBoba==0:
		boba.visible = true
		counterBoba+=1
	else:
		boba.visible = false
		counterBoba=0

@onready var tea = $addedTea
func _on_ingredient_tea_base_add_tea() -> void:
	if counterTea==0:
		tea.visible=true
		counterTea+=1
	elif counterTea!=7:
		tea.modulate=Color(1,1,0.5)
		
