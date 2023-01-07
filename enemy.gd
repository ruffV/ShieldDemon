extends KinematicBody2D

onready var player = get_parent().get_node("player")
var timer=null
export var start_delay=0.0
var start_timer=null
const bullet = preload("res://bullet.tscn")
var spawn_thing=false
var eyes=false
var speed=0
var on_screen=false
var won=false
var lost=false

func go():
	eyes=true
func dont_go():
	eyes=false

func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(1.5)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	
	start_timer = Timer.new()
	start_timer.set_one_shot(true)
	start_timer.set_wait_time(start_delay)
	start_timer.connect("timeout", self, "on_start_timeout_complete")
	add_child(start_timer)
	start_timer.start()

func on_timeout_complete():
	spawn_thing=true
	print("sshot")
	timer.start()

func on_start_timeout_complete():
	spawn_thing=true
	timer.start()

func _process(delta):
	look_at(player.position)
	var pos=player.position
	won=player.get_won()
	lost=player.get_lost()
	if(eyes && !won &&!lost):
		move_and_slide(Vector2(speed,0).rotated(rotation))
		if(spawn_thing):
			spawn_thing=false
			var BULLET = bullet.instance()
			BULLET.set_direction(Vector2(1,0).rotated(rotation))
			get_parent().add_child(BULLET)
			BULLET.position=position
	if(spawn_thing):
		spawn_thing=false



