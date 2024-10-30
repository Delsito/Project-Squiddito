## scrolling_area.gd - Gestione dello scorrimento
#extends Node2D
#
#var scroll_speed := 200  # Velocità dello scorrimento
#var is_scrolling := false  # Controllo per attivare/disattivare lo scorrimento
#
## Metodo per attivare lo scorrimento
#func start_scrolling():
	#is_scrolling = true
#
## Metodo per fermare lo scorrimento
#func stop_scrolling():
	#is_scrolling = false
#
## Metodo per aggiornare lo scorrimento
#func _process(delta):
	#if is_scrolling:
		#for child in get_children():
			#if child is Node2D:  # Muove tutti gli oggetti presenti nella scena verso il basso (o l'asse desiderato)
				#child.position.y += scroll_speed * delta



#scrolling_area.gd - Gestione dello scorrimento
extends Node2D

var scroll_speed := 200  # Velocità dello scorrimento
var is_scrolling := false  # Controllo per attivare/disattivare lo scorrimento

# Metodo per attivare lo scorrimento
func start_scrolling():
	is_scrolling = true

# Metodo per fermare lo scorrimento
func stop_scrolling():
	is_scrolling = false

# Metodo per aggiornare lo scorrimento
func _process(delta):
	if is_scrolling:
		for child in get_children():
			if child is Node2D:  # Muove tutti gli oggetti presenti nella scena verso il basso (o l'asse desiderato)
				child.position.y += scroll_speed * delta
