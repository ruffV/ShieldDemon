extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var direction=Vector2()
var speed = 100
var velocity=Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
#func set_direction(dir):
	#direction=dir
	#print(direction)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#velocity=direction*delta*speed
	#velocity=velocity.rotated(direction)
	#translate(velocity)
	pass
