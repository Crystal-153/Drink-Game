extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

signal customer_load
@onready var teaCustomer = $customer/order/addedTea
@onready var teaDrink = $customDrink/addedTea
@onready var drizzleCustomer = $customer/order/addedDrizzle
@onready var drizzleDrink = $customDrink/addedDrizzle
@onready var jellyCustomer = $customer/order/addedJelly
@onready var jellyDrink = $customDrink/addedJelly
@onready var bobaCustomer = $customer/order/addedBoba
@onready var bobaDrink = $customDrink/addedBoba
@onready var whippedCustomer = $customer/order/addedWhippedCream
@onready var whippedDrink = $customDrink/addedWhippedCream
@onready var puddingCustomer = $customer/order/addedPudding
@onready var puddingDrink = $customDrink/addedPudding
@onready var customerAdd=[teaCustomer,drizzleCustomer,jellyCustomer,bobaCustomer,whippedCustomer,puddingCustomer]
@onready var drinkAdd=[teaDrink,drizzleDrink,jellyDrink,bobaDrink,whippedDrink,puddingDrink]
var correct=0
var checked=false
@onready var happy=$customer/happyFace
@onready var mid =$customer/midFace
@onready var sad=$customer/sadFace
func _on_serve_button_serve() -> void:
	if checked==false:
		for i in range(0,3):
			if customerAdd[i].modulate==drinkAdd[i].modulate:
				correct+=1
				
			if i<customerAdd.size():
				if customerAdd[i+3].visible==drinkAdd[i+3].visible:
					correct+=1
					
			checked=true
		if correct==6:
			happy.visible=true
		elif correct>3:
			mid.visible=true
		else:
			sad.visible=true
	await get_tree().create_timer(2).timeout
	emit_signal("customer_load")
	checked=false
	correct=0
