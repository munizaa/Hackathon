extends Button

# Script for returning back to the Campus Map
# When the Player/Anteater is on the one of the four campus corners,
# allow the user to return back to the Campus Map

func _on_Return_pressed():
	get_tree().change_scene("res://Screens/Campus Map.tscn")
