extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Area2D_body_entered(body):
	if(body.get_name()=="player"):
		body.win(get_parent().get_name())
		print("you won - chest")
		
