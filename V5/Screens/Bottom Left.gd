extends Button


# When the Player/Anteater clicks on the lower left part of the Map
func _on_Bottom_Left_pressed():
	get_tree().change_scene("res://Screens/BottomLeftMap.tscn")
