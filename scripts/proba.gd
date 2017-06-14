extends KinematicBody2D

func _fixed_process(delta):
	if (Input.is_key_pressed(KEY_A)):
		move(Vector2(-1,0))
	if (Input.is_key_pressed(KEY_D)):
		move(Vector2(1,0))
	if (Input.is_key_pressed(KEY_W)):
		move(Vector2(0,-1))
	if (Input.is_key_pressed(KEY_S)):
		move(Vector2(0,1))

func _ready():
	set_fixed_process(true)
