extends Label

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ball_player_score():
	score += 1
	text = str(score)
	pass # Replace with function body.


func _on_ball_com_score():
	score += 1
	text = str(score)
	pass # Replace with function body.
