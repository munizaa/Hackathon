extends Control

# When the user is on the winning page
# and the user click on the Petr,
# Change the scene to the main menu 
# to give the user the option to play again or to quit
func _on_TextureButton_pressed():
	get_tree().change_scene("res://Screens/Main Menu.tscn")
	# Resetting the Global Variables
	# max_health and time
	Global.max_health = 30
	Global.time = 30
