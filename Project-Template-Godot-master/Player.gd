extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var speed = 1000
var gravity = 10
var jump_force = -400

func _physics_process(delta):
	motion.y += 10
	if Input. is_action_just_pressed("ui_right"):
		motion.x = speed
		
	elif Input. is_action_just_pressed("ui_left"):	
		motion.x = -speed
	
	else:
		motion.x = 0
		
	if is_on_floor():
		if Input. is_action_just_pressed("ui_up"):
			motion.y = jump_force
		move_and_slide(motion, UP)
