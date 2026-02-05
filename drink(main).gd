extends Node2D

var counterBoba=0
var counterTea=0
var counterWhipped=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
@onready var boba = $addedBoba

#when player clicks the boba sprite is toggled on and off :DDDD (as boba cant change colors)
func _on_ingredient_boba_add_boba() -> void:
	if counterBoba==0:
		boba.visible = true
		counterBoba+=1
	else:
		boba.visible = false
		counterBoba=0
#the color palaette used C:
var colors=["ffbcabff", "ffc69eff", "ffe89eff", "e7ff9eff", "9effaeff", "9effefff", "9eddffff", "bdc1ffff", "dcbdffff", "ffbde8ff", "d4aa77ff", "241603ff", "120b06ff"]
var i=(colors.size()-1)
@onready var tea = $addedTea
#tis function bacically ggoes through the colors and changes the color of it and when it ends it resets this one in pariticular goes backwards because the more normal tea colors are at the back
func _on_ingredient_tea_base_add_tea() -> void:
	if counterTea==0:
		tea.visible=true
		counterTea+=1
	elif counterTea!=(colors.size()-1):
		tea.modulate=Color(colors[i])
		i-=1
		counterTea+=1
	else:
		tea.visible=false
		i=(colors.size()-1)
		counterTea=0
@onready var whipped = $addedWhippedCream
func _on_ingredient_whipped_cream_add_whipped() -> void:
	if counterWhipped==0:
		whipped.visible=true
		counterWhipped+=1
	else:
		whipped.visible=false
		counterWhipped=0
