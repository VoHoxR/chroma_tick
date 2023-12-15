extends ColorRect

var colors = [
 Color(0,0,1)
]

var current_color_index = 0

func _ready():
	# Start the timer when the scene loads
	$"../Timer".start()




func _on_timer_timeout():
	# Declare the 'color' variable before using it
	var color = colors[current_color_index]

	# Change the color of the ColorRect
	self.color = color

	# Increment the color index, and loop back to 0 if it exceeds the array length
	current_color_index += 1
	if current_color_index >= colors.size():
		current_color_index = 0
