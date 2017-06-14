extends Node2D

var magia = null
var object = null

func _fixed_process(delta):
	if (Input.is_key_pressed(KEY_Z)):
		object = magia.instance()
		object.set_pos(Vector2(400,400))
		object.set_scale(Vector2(1.5,1.5))
		add_child(object)

func _ready():
	magia = preload("res://scenes/shock.tscn")
	set_fixed_process(true)