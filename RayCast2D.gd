extends RayCast2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
onready var player = get_parent().get_parent().get_node("player")
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
var target=null
func _physics_process(delta):
	if(is_colliding()):
		if(get_collider().get_name()=="player"):
			#target = get_collider()
			pass
	
	
