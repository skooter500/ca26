extends Node3D

@export var width:int = 10
@export var height:int = 20

@export var brick_scene:PackedScene

func _ready():
	for row in range(height):
		for col in range(width):
			var brick = brick_scene.instantiate()
			brick.position = Vector3(col * 1.1, row * 1.1, 0)
			var m = StandardMaterial3D.new()
			m.albedo_color = Color.from_hsv(randf(), 1, 1)
			var mesh:MeshInstance3D = brick.get_node("MeshInstance3D")
			mesh.set_surface_override_material(0, m)
	
			add_child(brick)
	pass
