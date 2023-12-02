extends Area2D

signal hit 

signal playerScore
signal comScore 


var speed = 400  # Set your desired speed
var velocity = Vector2(1, 1)  # Initialize velocity as a member variable

func _ready():

	# You can initialize velocity here if needed, for example:
	# velocity = Vector2(1, 1) * speed	
	pass

func _process(delta):
	# Move the ball automatically around the screen
	velocity = velocity.normalized() * speed * delta

	# Change direction when hitting all walls
	if position.x < 0:
		#var scorePlayer = get_node("../scoreplayer")
		#scorePlayer.score += 1
		#scorePlayer.text =  str(scorePlayer.score)
		position = Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2)
		playerScore.emit() 
	if position.x > get_viewport_rect().size.x:
		#var scoreCom = get_node("../scorecom")
		#scoreCom.score += 1
		#scoreCom.text =  str(scoreCom.score)
		position = Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2)
		comScore.emit()

	if position.y < 0 or position.y > get_viewport_rect().size.y:
		velocity.y *= -1

	translate(velocity)
	
func _on_area_entered(area):

	velocity.x *= -1
