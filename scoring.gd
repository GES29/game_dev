extends Label

var score = 100

func on_explode():
	text = "Score: %s" % score
