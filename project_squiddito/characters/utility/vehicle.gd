# vehicle.gd - Script per il controllo del veicolo
extends Node2D

var speed := 300  # Velocità del veicolo
var is_limited_movement := true  # Controllo per la modalità limitata

# Metodo per attivare il movimento limitato (solo laterale)
func enable_limited_movement():
	is_limited_movement = true

# Metodo per attivare il movimento libero
func enable_free_movement():
	is_limited_movement = false
