extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var playing=true
var music_position=0.0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func toggle_music():
	if(playing):
		music_position = $AudioStreamPlayer.get_playback_position()
		$AudioStreamPlayer.stop()
		playing=false
	else:
		$AudioStreamPlayer.play(music_position)
		playing=true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
