extends ColorRect

# Properties
var color_speed = 1.0  # Adjust this value to control the speed of color change
var time_passed = 0.0
@onready var gamescript = get_node
var first_component = 0
var second_component = 0
# Called every frame
func _process(delta):
	# Update the time passed
	time_passed += delta
	if Global.num_of_garrahs < 3000:
		first_component = (sin(time_passed * color_speed) + 1.0) / 2.0
		second_component = (sin(time_passed * color_speed + PI/2) + 1.0) / 2.0
		self.color = Color(0.0, first_component, second_component)
		
	if Global.num_of_garrahs >= 3000:
		Global.reset_speed = Global.reset_speed2
		color_speed = 3.0
		first_component = (sin(time_passed * color_speed + PI/2) + 1.0) / 2.0
		second_component = (sin(time_passed * color_speed) + 1.0) / 2.0
		self.color = Color(first_component,second_component,0)
	
	
