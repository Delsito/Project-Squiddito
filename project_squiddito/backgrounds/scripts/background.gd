# background.gd - Effetto di scorrimento dello sfondo
extends Sprite2D

var scroll_speed := 100  # Velocità di scorrimento dello sfondo

# Metodo per aggiornare lo sfondo
func _process(delta):
	position.y += scroll_speed * delta

	# Riposiziona lo sfondo quando esce dallo schermo
	if position.y > texture.get_size().y:
		position.y = 0
