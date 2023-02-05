extends Button

# Change screen to the Map2 when the user is on the main campus screen
# and clicks the top left

func _on_Proceed_pressed():
	Global.from_level = "Map5"
	get_tree().change_scene("res://Screens/Map2.tscn")
