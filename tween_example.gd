extends Node3D

var block_scene = preload("res://3dgame/brick.tscn")

func _ready() -> void:
	await get_tree().create_timer(2.0).timeout
	var b = block_scene.instantiate()
	b.position = Vector3.UP * 5
	add_child(b)
	await get_tree().create_timer(3.0).timeout
	b = block_scene.instantiate()
	b.position = Vector3.UP * 5
	add_child(b)

func _on_timer_timeout() -> void:
	var b = block_scene.instantiate()
	b.position = Vector3.UP * 5
	add_child(b)
	
	print("timeout")
	pass # Replace with function body.
