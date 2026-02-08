extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
#variables
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
	#only if the check is false it will play this, so that it doesnt constantly play
	if checked==false:
		#This goes thru each index and campares and for the ones in which the color is only changes and visabiklity is not changed
		for i in range(0,3):
			if customerAdd[i].modulate==drinkAdd[i].modulate:
				correct+=1
				
			if i<customerAdd.size():
				if customerAdd[i+3].visible==drinkAdd[i+3].visible:
					correct+=1
					
			checked=true
		#checked the face result if drink does not match
		if correct==6:
			happy.visible=true
			happyPoints+=1
		elif correct>3:
			mid.visible=true
			midPoints+=1
		else:
			sad.visible=true
			sadPoints+=1
	#small pause
	await get_tree().create_timer(2).timeout
	emit_signal("customer_load")
	emit_signal("customer_served")
	#resets the vars
	checked=false
	correct=0
	
	
#point system
var happyPoints=0
var midPoints=0
var sadPoints=0
@onready var pointLabel=$pointScore
signal customer_served
var combo=0


func _on_customer_served() -> void:
	if correct==6:
		combo+=1
	else:
		combo=0
	pointLabel.text="Happy customers: "+str(happyPoints)+ "\nAnnoyed customers: "+str(midPoints)+"\nSad/Angry customers: "+str(sadPoints)+"\nCombo: "+str(combo)
	
