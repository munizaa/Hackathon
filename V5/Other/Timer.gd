extends Label

# Timer script for the label
var timer_on = true

func _process(delta):
	
	# Will only decrease the time when the timer is still going
	if(timer_on):
		Global.time -= delta
		text = var2str(Global.time)
	
	# Calculating Time
	var mils = fmod(Global.time, 1)*1000
	var secs = fmod(Global.time, 60)
	var mins = fmod(Global.time, 60*60) / 60
	
	# Formatting Time
	var time_passed = "%02d : %02d : %03d" % [mins, secs, mils]
	
	# Setting the Label's text
	text = time_passed

	if Global.time <= 0:  # timer runs out - lost
		timer_on = false
		Global.time = 0
		get_tree().change_scene("res://Screens/LosePage.tscn")


