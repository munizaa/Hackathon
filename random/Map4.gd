extends "res://Screens/Levels.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.randomMap == 3:
		match Global.randomLocation:
			1:
				remove_child($SpiderPetr);
			2:
				remove_child($SpiderPetr2);
	else:
		remove_child($SpiderPetr);
		remove_child($SpiderPetr2);
