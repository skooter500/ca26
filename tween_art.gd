extends Node3D

var block_scene = preload("res://3dgame/tween_brick.tscn")

func _ready():
	var size = 5
	for row in range(size):
		for col in range(size):
			var block:MeshInstance3D = block_scene.instantiate()
			
			block.position = Vector3(col * 2, row * 2, 0)
			add_child(block)
			var m:StandardMaterial3D = block.get_surface_override_material(0)
			m = m.duplicate()
			var h = (row + col) / float(size*2)
			print(h)
			m.albedo_color = Color.from_hsv(h, 1, 1, 0.8)
			block.set_surface_override_material(0, m)
			await get_tree().create_timer(0.5).timeout
			
