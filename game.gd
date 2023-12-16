extends Node2D

@onready var movetimer = $movetimer
@onready var the_mcgarrah = $themcgarrah
@onready var background = $background
@onready var dripmgarrah = $themcgarrah/spinningdripmgarrah
@onready var spintimer = $Timer
@onready var mcgarrahs_clicked = $Label

var mcgarrah_rotation = 0
var max_garrahs = 3000
var random_num = randf_range(0.0,950.50)

func _ready():
	mcgarrahs_clicked.text = "mcgarrah's clicked: 0"
	
func _process(delta):
	dripmgarrah.rotate(mcgarrah_rotation)
	if Global.num_of_garrahs == max_garrahs:
		mcgarrah_rotation = Global.reset_speed
		max_garrahs += 100
		
	if max_garrahs == 3100 and Global.num_of_garrahs == 3000:
		dripmgarrah.texture = preload("res://hurt_drip_garrah.png")

func _on_themcgarrah_pressed():
	Global.num_of_garrahs += 1
	mcgarrahs_clicked.text = "mcgarrah's clicked: " + str(Global.num_of_garrahs)
	mcgarrah_rotation += 0.001
