extends Node

var cache_scene := {}

func get_cached_scene(path: String) -> PackedScene:
	if cache_scene.has(path):
		return cache_scene[path]
	else:
		var scene = load(path)
		if scene:
			cache_scene[path] = scene
		return scene
