extends RayCast2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

onready var player = get_parent().get_parent().get_node("player")
onready var parent = get_parent()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(is_colliding()):
		if(get_collider().get_name()=="player"):
			parent.go()
		else:
			parent.dont_go()
