extends Label

var score = 100

func on_explode():
	score += 10
	text = "Score: %s" % score
