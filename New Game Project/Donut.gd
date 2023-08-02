extends Area2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var rng = RandomNumberGenerator.new()

var maxX = DisplayServer.window_get_size().x
var maxY = DisplayServer.window_get_size().y



func _physics_process(delta):
	# Add the gravity.
	
	# Handle Jump.
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	


func _on_area_entered(area):
	pass # Replace with function body.


func _on_body_entered(body):
	position.x = rng.randi_range(0, maxX);
	position.y = rng.randi_range(0, maxY);
	
