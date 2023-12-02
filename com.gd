extends Area2D

var speed = 200
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Get position of ball.gd node 
	var ball = get_node("../Ball")

	if (ball.position.y > position.y):
		position.y += speed   * delta
	else: 
		position.y -= speed   * delta



func _on_area_entered(area):
	hide()
	pass # Replace with function body.
