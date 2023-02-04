extends KinematicBody2D

var score : int = 0  # +1 for each Petr
var speed : int = 200  # speed of player
var jumpForce : int = 400  # force of jumps
var gravity : int = 1000  # pulls player down
var health : int = 100

var vel : Vector2 = Vector2()

# sprite variable references sprite node
# var sprite : Sprite = $Sprite  

onready var player : Sprite = get_node("Sprite")

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

