extends Node2D
@onready var tea = $addedTea
@onready var boba = $addedBoba
@onready var whipped = $addedWhippedCream
@onready var pudding = $addedPudding
@onready var jelly = $addedJelly
@onready var drizzle = $addedDrizzle
	
var colors=["ffbcabff", "ffc69eff", "ffe89eff", "e7ff9eff", "9effaeff", "9effefff", "9eddffff", "bdc1ffff", "dcbdffff", "ffbde8ff", "d4aa77ff", "241603ff", "120b06ff"]

var random = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tea.visible=true
	jelly.visible=true
	drizzle.visible=true
	random=(randi() % colors.size())
	tea.modulate=Color(colors[random])
	random=(randi() % colors.size())
	jelly.modulate=Color(colors[random])
	random=(randi() % colors.size())
	drizzle.modulate=Color(colors[random])
	random=(randi() % 2)
	if random==0:
		boba.visible=false
	else:
		boba.visible=true
	random=(randi() % 2)
	if random==0:
		whipped.visible=false
	else:
		whipped.visible=true
	random=(randi() % 2)
	if random==0:
		pudding.visible=false
	else:
		pudding.visible=true
	
