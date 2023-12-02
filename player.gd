extends Area2D

var speed = 400
var angular_speed = PI
func _init():
	print("Hello, world!")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Move the node up when the up arrow key is pressed.
	if Input.is_action_pressed("ui_up"):
		translate(Vector2(0, -speed * delta))
	# Move the node down when the down arrow key is pressed.
	if Input.is_action_pressed("ui_down"):
		translate(Vector2(0, speed * delta))


