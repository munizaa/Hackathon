extends KinematicBody2D

signal grounded_updated(is_grounded)
signal health_updated(health)
signal killed()


var score : int = 0  # +1 for each Petr
var speed : int = 200  # speed of player
var jumpForce : int = 400  # force of jumps
var gravity : int = 1000  # pulls player down
var max_health : int = 100

var vel : Vector2 = Vector2()

# sprite variable references sprite node
# var sprite : Sprite = $Sprite  

onready var player : Sprite = get_node("Sprite")
onready var health = max_health
onready var invulnerability_timer = $Invulnerability_timer

func _physics_process(delta):
	# gets called 60 times a second
	vel.x = 0
	
	# move inputs
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	if Input.is_action_pressed("move_right"):
		vel.x += speed
	
	# jump input
	if Input.is_action_just_pressed("jump") and is_on_floor():
		vel.y -= jumpForce
	
	# apply velocity	
	vel = move_and_slide(vel, Vector2.UP)
	
	# gravity
	vel.y += gravity * delta
	
	# player direction
	if vel.x < 0:
		player.flip_h = true
	elif vel.x > 0:
		player.flip_h = false

func kill():
	print("PLAYER HAS DIED!!!");

func _on_Player_health_updated():
	# Temporary Variable to remember the health value
	
	if (invulnerability_timer.is_stopped()):
		invulnerability_timer.start()
		
		# TO-DO
		# Want to add a flicker to the Player to indicate
		# the player has taken damage.
		
		# modulate.a = 0.5
		
		var prev_health = health
		health = max(0, health - 10)
		# Same as => health = clamp(value, 0, max_health);
		# Indication that the player has taken some form of damage
		if prev_health != health:
			print(str(health));
			if (health == 0):
				kill();
				emit_signal("killed");
