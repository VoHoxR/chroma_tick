extends Node2D

@onready var background = $background
@onready var dripmgarrah = $Button/spinningdripmgarrah
@onready var spintimer = $Timer
@onready var mcgarrahs_clicked = $Label
var mcgarrah_rotation = 0
var max_garrahs = 100
var num_of_garrahs = 0

func _ready():
	mcgarrahs_clicked.text = "mcgarrah's clicked: 0"
	
func _process(delta):
	dripmgarrah.rotate(mcgarrah_rotation)
	if num_of_garrahs == max_garrahs:
		mcgarrah_rotation = 0.01
		max_garrahs += 100
	
func _on_button_pressed():
	num_of_garrahs += 1
	mcgarrahs_clicked.text = "mcgarrah's clicked: " + str(num_of_garrahs)
	mcgarrah_rotation += 0.001
