extends Area3D

@export var speed:float = 20

func _physics_process(delta: float) -> void:
	translate(Vector3.FORWARD * speed * delta)


func _on_body_entered(body: Node3D) -> void:
	print("I hit something!!")
	pass # Replace with function body.
