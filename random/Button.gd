extends Button

func _on_Button_pressed():
	get_tree().change_scene("res://Screens/Campus Map.tscn")
	randomize();
	Global.randomMap = (randi() % 4) + 1;
	randomize();
	Global.randomLocation = (randi() % 2) + 1;
