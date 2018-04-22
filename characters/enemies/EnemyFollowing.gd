extends "res://characters/Entity.gd"

export var speed = 150
var playerPosition = Vector2()

func _ready():
	SPEED = speed
	movedir = rand()

func _physics_process(delta):
	if is_on_wall():
		movedir = rand()

func _on_MoveTimer_timeout():
	playerPosition = get_node("/root/Game/Dungeon/Player").get_global_position()
	if playerPosition.x > get_global_position().x :
		movedir.x = 1
	elif playerPosition.x < get_global_position().x:
		movedir.x = -1
	else:
		movedir.x = 0
	if playerPosition.y > get_global_position().y:
		movedir.y = 1
	elif playerPosition.y < get_global_position().y:
		movedir.y = -1
	else:
		movedir.x = 0