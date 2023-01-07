extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var direction=Vector2()
var speed = 150
var velocity=Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func set_direction(dir):
	direction=dir
	print(direction)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_slide(direction*speed)


func _on_bullet_body_entered(body):
	if(body.get_name()=="player"):
		body.die()
		queue_free()
