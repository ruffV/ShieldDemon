extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var time=0
func play_audio():
	time+=1
	time = time%4
	if(time==0):
		$AudioStreamPlayer2D.play()
	elif(time==1):
		$AudioStreamPlayer2D2.play()
	elif(time==2):
		$AudioStreamPlayer2D3.play()
	elif(time==3):
		$AudioStreamPlayer2D4.play()
func _physics_process(delta):
	look_at(get_global_mouse_position())

func _on_Area2D_body_entered(body):
	print(body.get_name())
	if body.get_name().begins_with("enemy"):
		pass

func _on_Area2D_area_entered(area):
	if(area.get_name()=="bullet"):
		area.queue_free()
		play_audio()
		
