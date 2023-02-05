extends CollisionShape2D

# Script for all collision made

var speed : int = 200  # speed of player
var gravity : int = 1000  # pulls player down

var vel : Vector2 = Vector2()

func _physics_process(delta):
	# gets called 60 times a second
	vel.x = 0
	
	# gravity
	vel.y += gravity * delta


func _on_EnemyMap_body_entered(body):
	if body.has_method("hurt"):
		body.hurt()

