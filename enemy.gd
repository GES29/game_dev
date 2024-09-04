extends Area2D

@export var speed = 15
@onready var animation_player = $explosion

func _process(delta):
	position.y += speed * delta
	
func explode():
	speed = 0
	$Sprite2D.hide()
	$AnimationPlayer.play("explode")
	await $AnimationPlayer.animation_finished
	queue_free()

	
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
