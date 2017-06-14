extends Area2D

func solveBodyCollision(body):
	#POSAR CODI AQUI DE LA COLLISION BOOM ALLAHUAKBAR
	pass

func _ready():
	connect('enter_body',self,'solveBodyCollision')