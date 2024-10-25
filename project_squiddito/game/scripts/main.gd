# game.gd - Script principale per gestire le stanze e la modalità di gioco
extends Node2D

# Carica le scene di Vehicle e ScrollingArea
@export var player_scene: PackedScene
@export var scrolling_area_scene: PackedScene

# Riferimenti ai nodi instanziati
var vehicle
var scrolling_area

func _ready():
	# Instanzia il nodo Vehicle e lo aggiunge alla scena
	vehicle = player_scene.instantiate()
	add_child(vehicle)

	# Instanzia il nodo ScrollingArea e lo aggiunge alla scena
	scrolling_area = scrolling_area_scene.instantiate()
	add_child(scrolling_area)

	# Esempio di posizionamento del veicolo al centro della scena
	vehicle.position = Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2)

# Metodo per passare a una nuova stanza e configurare il movimento
func enter_new_room(is_scrolling_room: bool):
	if is_scrolling_room:
		vehicle.enable_limited_movement()
		scrolling_area.start_scrolling()  # Avvia lo scorrimento
	else:
		vehicle.enable_free_movement()
		scrolling_area.stop_scrolling()  # Ferma lo scorrimento
