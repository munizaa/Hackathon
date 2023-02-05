extends Label

func _process(delta):
	text = "Health: " + str(Global.max_health);
