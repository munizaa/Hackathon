extends Label

# Script to display the health on the screen
# and to be consistent per screen/map
func _process(delta):
	text = "Health: " + str(Global.max_health);
