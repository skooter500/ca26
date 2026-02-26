extends MeshInstance3D

@export var tt:Tween.TransitionType = Tween.TransitionType.TRANS_QUINT


func tweens_finished():
	print("Tweens finished!")
	
func play_sound(i):
	print(i)
	$"../AudioStreamPlayer".pitch_scale = randf_range(0.5, 1.2)

	$"../AudioStreamPlayer".play()
	

func do_tweens():
	scale = Vector3.ZERO
	print("Loop!")
	var m:StandardMaterial3D = get_surface_override_material(0)

	var t = create_tween()
	t.set_ease(Tween.EASE_IN_OUT)
	t.set_trans(tt)
	t.tween_property(self, "scale", Vector3.ONE, 2)
	t.tween_property(m, "albedo_color", Color.from_hsv(randf(), 1, 1), 2)
	t.tween_property(self, "rotation:y", rotation.y + PI, 2)

	#
	#t.tween_property(m, "albedo_color", Color.from_hsv(randf(), 1, 1), 2)
	#
	#
	#t.tween_property(m, "albedo_color", Color.from_hsv(randf(), 1, 1), 2)
		#
	#t.tween_property(m, "albedo_color:a", 0, 2)
	#t.tween_property(m, "albedo_color:a", 1, 2)

	t.tween_property(self, "position:x", position.x + 5, 2)		
	t.tween_property(self, "position:z", position.z - 5, 2)
	t.tween_property(self, "position:x", position.x + 5, 2)
	t.tween_property(self, "position:x", position.x + 5, 2)
	t.tween_property(self, "position:z", position.z - 5, 2)
	t.tween_property(self, "position", Vector3.ZERO, 2)
	t.finished.connect(do_tweens)
	t.step_finished.connect(play_sound)
	
	

func _ready() -> void:
	do_tweens()
	
	
