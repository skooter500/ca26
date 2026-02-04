extends MeshInstance3D

func _ready():
	pass
	
func _process(delta: float) -> void:
	# rotate_x(delta)	
	# rotate_y(delta)
	translate(Vector3.FORWARD * delta)
	$"../pos_label".text = str(position)
