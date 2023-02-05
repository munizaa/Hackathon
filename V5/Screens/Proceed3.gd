extends Button

# Change screen to the Map3 when the user is on the main campus screen
# and clicks the top right

func _on_Proceed_pressed():
	Global.from_level = "Map2"
	get_tree().change_scene("res://Screens/Map3.tscn")
