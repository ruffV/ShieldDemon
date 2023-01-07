extends KinematicBody2D

var timer=null
const bullet = preload("res://bullet.tscn")
var spawn_thing=false
export var start_delay=0.0
var start_timer=null
var eyes=false
var speed=0
export var fliph=false
export var firing=true

func go():
	eyes=true
func dont_go():
	eyes=false

func _ready():
	$"0x72_16x16DungeonTilesetv4".flip_h=fliph
	
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(1.25)
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
	timer.start()

func on_start_timeout_complete():
	spawn_thing=true
	timer.start()

func _process(delta):
	move_and_slide(Vector2(speed,0).rotated(rotation))
	if(spawn_thing&&firing):
		spawn_thing=false
		var BULLET = bullet.instance()
		BULLET.set_direction(Vector2(1,0).rotated(rotation))
		get_parent().add_child(BULLET)
		BULLET.position=position



