extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
# func _ready():
	# add function body.
	
var speed : int = 2  # speed of zotbot
var gravity : int = 50  # pulls zotbot down
var current_state = "LEFT"
var count : int = 0

var vel : Vector2 = Vector2()
onready var zotbot : Sprite = get_node("Sprite")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	# gets called 60 times a second
	
	# apply velocity	
	vel = move_and_slide(vel, Vector2.UP)
	
	# gravity
	vel.y += gravity * delta
	
	# zotbot direction
	if vel.x > 0:
		zotbot.flip_h = true
	elif vel.x < 0:
		zotbot.flip_h = false
		
	count += 1
	if count < 200:
		vel.x -= speed
	elif count > 200 and count < 450:
		vel.x += speed
	elif count > 450:
		count = 0

func _on_Enemy_body_entered(body):
	if body.is_in_group("Player"):
		body.hurt()
		print("test")


