extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_credits_pressed():
	get_tree().change_scene("res://level-select.tscn")


func _on_game_by_pressed():
	OS.shell_open("https://maxvale.itch.io/")


func _on_songs_by_pressed():
	OS.shell_open("https://soundcloud.com/cosmonautically")


func _on_arrival_pressed():
	OS.shell_open("https://soundcloud.com/cosmonautically/arrival?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing")


func _on_machinist_pressed():
	OS.shell_open("https://soundcloud.com/cosmonautically/machinist-1?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing")


func _on_gonda_pressed():
	OS.shell_open("https://soundcloud.com/cosmonautically/insanomode2?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing")


func _on_gonda2_pressed():
	OS.shell_open("https://0x72.itch.io/")



func _on_main_pressed():
	OS.shell_open("https://soundcloud.com/cosmonautically/shield-demon-main-menu-theme?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing")
