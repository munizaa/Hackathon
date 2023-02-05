extends Area2D

# Script for the Spider-man Petr
# When the user touch the Spider-man Petr,
# change the screen to the winning page
# as that is the criteria of winning.
func _on_SpiderPetr_body_entered(body):
	get_tree().change_scene("res://Screens/WinPage.tscn")
