extends Node2D
#Variablessssssss
var counterBoba=0
var counterWhipped=0
var counterPudding=0
var counterJelly=0
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
var colors=["ffffffff","ffbcabff", "ffc69eff", "ffe89eff", "e7ff9eff", "9effaeff", "9effefff", "9eddffff", "bdc1ffff", "dcbdffff", "ffbde8ff", "d4aa77ff", "241603ff", "120b06ff"]
var i=(colors.size()-1)
@onready var tea = $addedTea
#tis function bacically ggoes through the colors and changes the color of it and when it ends it resets this one in pariticular goes backwards because the more normal tea colors are at the back
func _on_ingredient_tea_base_add_tea() -> void:
	if i==(colors.size()-1):
		tea.visible=true
		
	if i>=0:
		tea.modulate=Color(colors[i])
		i-=1
	else:
		tea.visible=false
		i=(colors.size()-1)
@onready var whipped = $addedWhippedCream
#This toggles whipped cream on and off as it doesnt change colors
func _on_ingredient_whipped_cream_add_whipped() -> void:
	if counterWhipped==0:
		whipped.visible=true
		counterWhipped+=1
	else:
		whipped.visible=false
		counterWhipped=0

@onready var pudding = $addedPudding
#This toggles the pudding on and off as pudding will always be yellow
func _on_ingredient_pudding_add_pudding() -> void:
	if counterPudding==0:
		pudding.visible=true
		counterPudding+=1
	else:
		pudding.visible=false
		counterPudding=0
#diff var because I don't want to deal with i being messed up due to this (,:
var j=(colors.size()-1)
@onready var drizzle = $addedDrizzle
#goes thru the colors backwards again but for the drizzle instead
func _on_ingredient_drizzle_add_drizzle() -> void:
	if j==(colors.size()-1):
		drizzle.visible=true
		
	if j>=0:
		drizzle.modulate=Color(colors[j])
		j-=1
	else:
		drizzle.visible=false
		j=(colors.size()-1)
@onready var jelly = $addedJelly
#the colors on the jelly go forward as jellys are fun colored
#also didnt need a extra var as counter can be multifunctional lol
func _on_ingredient_jelly_add_jelly() -> void:
	if counterJelly==0:
		jelly.visible=true
		counterJelly+=1
	elif counterJelly!=(colors.size()-1):
		jelly.modulate=Color(colors[counterJelly])
		counterJelly+=1
	else:
		jelly.visible=false
		counterJelly=0


func _on_reset_button_reset() -> void:
	tea.visible=false
	boba.visible=false
	whipped.visible=false
	pudding.visible=false
	drizzle.visible=false
	jelly.visible=false
	tea.modulate=Color(0.0, 0.0, 0.0, 0.0)
	drizzle.modulate=Color(0.0, 0.0, 0.0, 0.0)
	jelly.modulate=Color(0.0, 0.0, 0.0, 0.0)
	#for the tea
	i=(colors.size()-1)
	#for boba
	counterBoba=0
	#for whipped cream
	counterWhipped=0
	#for pudding
	counterPudding=0
	#for drizzle
	j=(colors.size()-1)
	#for jelly
	counterJelly=0
