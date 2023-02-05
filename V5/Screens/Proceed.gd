extends Button


# Change screen to the Map5 when the user is on the main campus screen
# and clicks the bottom left
func _on_Proceed_pressed():
		Global.from_level = "Map4"
		get_tree().change_scene("res://Screens/Map5.tscn")

