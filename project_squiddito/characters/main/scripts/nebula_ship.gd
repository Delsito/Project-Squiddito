extends "res://characters/utility/vehicle.gd"

func _get_ship_animation_scene(animation_name: String):
	var animation_scene = MainShipAnimationSingleton.get_base_engine_animation()
	var animation_instance = animation_scene.instantiate().get_node("Ship")
	add_child(animation_instance)
	animation_instance.play(animation_name)


func play_base_idle_animation():
	$Ship.play("idle")


func play_move_right_animation():
	$Ship.play("move_right")


func play_move_left_animation():
	$Ship.play("move_left")


func play_stage_animation():
	#_get_ship_animation_scene("stage")
	$Ship.play("stage")
	
	
func play_explosion_animation():
	_get_ship_animation_scene("explosion")
	
func get_current_animation():
	$Ship.get_animation()
