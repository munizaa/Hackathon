extends Button

# Return to the main screen when the Player/Anteater
# is on the instructions page

func _on_Return_pressed():
	get_tree().change_scene("res://Screens/Main Menu.tscn")
