extends Label

var time = 3
var timer_on = true

func _process(delta):
	if(timer_on):
		time -= delta
		text = var2str(time)
		
	var mils = fmod(time, 1)*1000
	var secs = fmod(time, 60)
	var mins = fmod(time, 60*60) / 60
	
	var time_passed = "%02d : %02d : %03d" % [mins, secs, mils]
	text = time_passed
	
	if time <= 0:
		timer_on = false
		time = 0
		# change to lose screen
	
	 
