extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Size of the window/Scene
var screen_size;
# Export allows this to become a "Script Variable."
# This allows us to be able to modify the speed in the 
# "Inspector" tab.
# This is in pixel/seconds
export var player_speed = 50;
var movement = Vector2();

# Called when the node enters the scene tree for the first time.
func _ready():
	# Screen_size will be set
	screen_size = get_viewport_rect().size;
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# This function will process the player's movement
func _process(delta):
	
	# When the user inputs a movement key
	# Right --> Positive X
	# Left 	--> Negative X
	# Up 	-->	Positive Y
	# Down	--> Negative Y
	if Input.is_action_just_pressed("move_right"):
		$AnimatedSprite.animation = "Main";
		movement.x += 1;	
	if Input.is_action_just_pressed("move_left"):
		$AnimatedSprite.animation = "Movement";
		movement.x -= 1;
	if Input.is_action_just_pressed("move_up"):
		movement.y += 1;
	if Input.is_action_just_pressed("move_down"):
		movement.y -= 1;
	# Normalize the speed so bi-directional key presses are not faster 
	# than simply pressing one key
	movement = movement.normalized() * player_speed;
	position = position + delta * movement;
	$AnimatedSprite.play();
	
	#pass
