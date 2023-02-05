extends Node2D

# Purpose:
# When changing scenes, move the character's position to
# the appropriate position
func _ready():
	
	if Global.from_level != null:
		get_node("Player").set_position(get_node(Global.from_level + "Pos").position);
