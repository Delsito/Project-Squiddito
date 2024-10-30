extends "res://utility/scripts/cached_scenes_singleton.gd"


func  get_base_engine_animation():
	var animation = get_cached_scene("res://characters/main/scenes/nebula_ship.tscn")
	return animation
