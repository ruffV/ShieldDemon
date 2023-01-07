extends KinematicBody2D

var velocity = Vector2()

var speed=20
var speed1=20
var can_dash = true
var timer=null
var won=false
var lost=false
var first_timer=true

func get_won():
	return(won)
func get_lost():
	return(lost)
	
func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(5)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	$Camera2D/victory_ui.hide()
	$Camera2D/death_ui.hide()

func on_timeout_complete():
	can_dash=true

func _physics_process(delta):
	
	velocity = Vector2()
	if(won):
		$AnimationPlayer.play("won")
		$Camera2D/victory_ui.show()
		#if(Input.is_action_pressed("space")):
			#get_tree().change_scene("res://level-select.tscn")
	elif(lost):
		$Camera2D/death_ui.show()
		$AnimationPlayer.play("deadasf")
	else:
		speed=speed1
		if(Input.is_action_pressed("w")):
			velocity.y -=1
		if(Input.is_action_pressed("a")):
			velocity.x -=1
		if(Input.is_action_pressed("s")):
			velocity.y +=1
		if(Input.is_action_pressed("d")):
			velocity.x +=1
		#if(Input.is_action_just_pressed("space")&& can_dash):
			#speed=2000
			#can_dash=false
			#timer.start()
		if(velocity!=Vector2()):
			$AnimationPlayer.play("walk")
			if(first_timer):
				$"footstep-noises".play()
				first_timer=false
		else:
			$AnimationPlayer.play("idle")
			$"footstep-noises".stop()
			first_timer=true
		if(velocity.x>0):
			$char_sprite.set_flip_h(true)
		elif(velocity.x<0):
			$char_sprite.set_flip_h(false)
		velocity*=speed
		move_and_slide(velocity)

func _on_Button_pressed():
	if(won || lost):
		get_tree().change_scene("res://level-select.tscn")
func _on_Button2_pressed():#retry
	if(won || lost):
		get_tree().reload_current_scene()
func die():
	print("player is dead asf")
	if(!lost):
		lost=true
		$"footstep-noises".stop()
		$deadashell.play()
		$CollisionShape2D2/porkifier/AudioStreamPlayer2D.play()
func win(level):
	$"footstep-noises".stop()
	$winyo.play()
	print("we won - player")
	won=true


	
