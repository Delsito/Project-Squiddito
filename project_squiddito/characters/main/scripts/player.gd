extends CharacterBody2D


var speed := 300  # Velocità del veicolo
var is_limited_movement := false  # Controllo per la modalità limitata


# Metodo per gestire il movimento
func _physics_process(delta):
	_handle_velocity()
	_handle_animation()

# Metodo per attivare il movimento limitato (solo laterale)
func enable_limited_movement():
	is_limited_movement = true

# Metodo per attivare il movimento libero
func enable_free_movement():
	is_limited_movement = false

	
func _handle_velocity():
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	#velocity = direction * speed
	#move_and_slide()
#
	#if Input.is_action_pressed("move_right"):
		#velocity.x += 1
	#if Input.is_action_pressed("move_left"):
		#velocity.x -= 1
#
	#if not is_limited_movement:
		#if Input.is_action_pressed("move_up"):
			#velocity.y -= 1
		#if Input.is_action_pressed("move_down"):
			#velocity.y += 1
#
	#velocity = velocity.normalized() * speed
	#move_and_slide()


func _handle_animation():
	if velocity.length() > 0.0:
		$Ship.play_base_idle_animation()
	else:
		_animation_move()
	

func _animation_move():
	#if $Ship.get_current_animation() == "stage":
		#pass
	
	if Input.is_action_just_pressed("move_left"):
		$Ship.play_move_left_animation()
	elif Input.is_action_just_pressed("move_right"):
		$Ship.play_move_right_animation()
	elif Input.is_action_just_pressed("stage"):
		$Ship.play_stage_animation()
