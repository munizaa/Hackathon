extends Button

# During the instructions scene,
# allow the user to go back to the main menu
func _on_Proceed_pressed():
		get_tree().change_scene("res://Screens/Main Menu.tscn")
