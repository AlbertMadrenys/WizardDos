extends Node2D

var animationStep = null
var animationSpeed = null
var animationTime = null
var sprite = null

func _fixed_process(delta):
	animationTime -= 1
	if (animationTime == 0):
		animationStep += 1
		animationTime = animationSpeed
	if (animationStep == 4):
		animationStep = 0
	else:
		sprite.set_frame(animationStep)

func _ready():
	animationStep = 0
	animationSpeed = 4
	animationTime = animationSpeed
	sprite = get_node("shockKinem/shockAnim")
	set_fixed_process(true)