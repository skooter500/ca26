extends MeshInstance3D

func _ready() -> void:
	scale = Vector3.ZERO
	$AudioStreamPlayer3D.pitch_scale = randf_range(0.7, 1.3)
	var t = create_tween()
	t.set_ease(Tween.EASE_OUT)
	t.set_trans(Tween.TRANS_ELASTIC)
	t.tween_property(self, "scale", Vector3.ONE, 1)
	t.tween_property(self, "position:z", position.z - 0.5, 1)	
	t.tween_property(self, "rotation:y", PI * 0.5, 1)
	t.tween_property(self, "position:y", position.y + 0.5, 1)	
	t.tween_property(self, "rotation:x", PI * 0.5, 1)
	t.tween_property(self, "rotation:z", PI * 0.5, 1)
	
