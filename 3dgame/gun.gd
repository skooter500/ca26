extends CSGBox3D

@export var projectile_scene:PackedScene

@export var fire_rate:float = 2

var can_fire = true

func _ready() -> void:
	var wait_time = 1 / fire_rate
	$Timer.wait_time = wait_time
	
	

func _process(delta: float) -> void:
	if Input.is_action_pressed("fire") and can_fire:
		var p = projectile_scene.instantiate()
		get_tree().root.add_child(p)
		$AudioStreamPlayer3D.pitch_scale = randf_range(0.5, 1.5)
		$AudioStreamPlayer3D.play()
		
		p.global_position = $bullet_spawn.global_position
		p.global_rotation = $bullet_spawn.global_rotation
		can_fire = false
		$Timer.start()


func _on_timer_timeout() -> void:
	can_fire = true
	print("hello")

	pass # Replace with function body.
