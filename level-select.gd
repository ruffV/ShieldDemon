extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass)

func _on_quit_pressed():
	get_tree().quit()

func _on_Button_pressed():
	get_tree().change_scene("res://levels/level1.tscn")

func _on_Button3_pressed():
	get_tree().change_scene("res://levels/level2.tscn")

func _on_level3_pressed():
	get_tree().change_scene("res://levels/level3.tscn")

func _on_level4_pressed():
	get_tree().change_scene("res://levels/level4.tscn")

func _on_level5_pressed():
	get_tree().change_scene("res://levels/level5.tscn")

func _on_level6_pressed():
	BackgroundMusic.toggle_music()

func _on_credits_pressed():
	get_tree().change_scene("res://credits.tscn")
