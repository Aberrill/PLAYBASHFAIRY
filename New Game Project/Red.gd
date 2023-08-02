extends CharacterBody2D

@export var speed = 10 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	$AnimatedSprite2D.play()
# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		$AnimatedSprite2D.play("side")
		$AnimatedSprite2D.flip_h = false
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		$AnimatedSprite2D.play("side")
		$AnimatedSprite2D.flip_h = true
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
		$AnimatedSprite2D.play("down")
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		$AnimatedSprite2D.play("up")

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	
		
	move_and_collide(velocity)
	position = position.clamp(Vector2.ZERO, screen_size)	
