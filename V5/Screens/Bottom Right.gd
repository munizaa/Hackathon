extends Button

# When the Player/Anteater clicks on the lower right part of the Map

func _on_Bottom_Right_pressed():
	get_tree().change_scene("res://Screens/Bottom Right Map.tscn")
