extends CharacterBody3D

func _ready() -> void:
	pass
	
# Mesh
func _process(delta: float) -> void:
	pass
	
var r:float = 0
@export var speed:float = 1

func _physics_process(delta: float) -> void:
	var f = Input.get_axis("move_back", "move_forward")
	# translate(Vector3.FORWARD * delta * f)	
	velocity = global_basis.z * f * 10
	var r = Input.get_axis("left", "right")	
	rotate_y(r * delta)
	move_and_slide()
	
