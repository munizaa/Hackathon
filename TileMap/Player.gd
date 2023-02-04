extends KinematicBody2D

var score : int = 0
var speed : int = 200
var jumpForce : int = 600
var gravity : int = 800

var vel : Vector2 = Vector2()

# sprite variable references sprite node
# var sprite : Sprite = $Sprite  

onready var sprite : Sprite = get_node("Sprite")

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
		sprite.flip_h = true
	elif vel.x > 0:
		sprite.flip_h = false
