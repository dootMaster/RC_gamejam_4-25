extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 200
const JUMPFORCE = -800
const GRAVITY = 50

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.x = 0
	velocity.y += GRAVITY
	if Input.is_action_pressed("up") and is_on_floor():
		velocity.y += JUMPFORCE
		$AnimatedSprite.play("jump")
	elif Input.is_action_pressed("right"):
		velocity.x += SPEED
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
	elif Input.is_action_pressed("left"):
		velocity.x -= SPEED
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
	else:
		velocity.x = lerp(velocity.x, 0, 0.6)
		$AnimatedSprite.play("idle")
	velocity = move_and_slide(velocity, Vector2.UP)
	
	
		
		
	
	
