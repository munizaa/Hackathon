extends Control

# Script for the losing page
# When the Player/Anteater is on the losing page, 
# Allow the user to be able to return to the main menu
# and give the option of replayability.
func _on_TextureButton_pressed():
	Global.max_health = 30;
	get_tree().change_scene("res://Screens/Main Menu.tscn")
	# Reset the Global Variable
	# max_health and time
	
	Global.time = 60;
