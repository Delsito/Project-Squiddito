# vehicle.gd - Script per il controllo del veicolo
extends CharacterBody2D

var speed := 300  # Velocità del veicolo
var is_limited_movement := false  # Controllo per la modalità limitata

# Metodo per attivare il movimento limitato (solo laterale)
func enable_limited_movement():
	is_limited_movement = true

# Metodo per attivare il movimento libero
func enable_free_movement():
	is_limited_movement = false

# Metodo per gestire il movimento
func _physics_process(delta):
	var velocity := Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1

	if not is_limited_movement:
		if Input.is_action_pressed("ui_up"):
			velocity.y -= 1
		if Input.is_action_pressed("ui_down"):
			velocity.y += 1

	velocity = velocity.normalized() * speed
	move_and_slide()
