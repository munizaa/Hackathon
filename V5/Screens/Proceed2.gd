extends Button

# Change screen to the Map4 when the user is on the main campus screen
# and clicks on the bottom right
func _on_Proceed_pressed():
	Global.from_level = "Map3"
	get_tree().change_scene("res://Screens/Map4.tscn")
