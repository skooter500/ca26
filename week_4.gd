extends Node3D

"""
Node
Node3D
MeshInstance3D
Area3D
CollisionShape3D
RigidBody3D
StaticBody3D
Camera3D
CharacterBody3D
DirectionalLight3D
WorldEnvironment3D
CSBBox
CSGSphere
Etc
Marker3D
AudioStreamPlayer3D
AudiStreamListener3D
"""

@onready var pl = $player
@onready var m = $player/MeshInstance3D

@export var p:CharacterBody3D

var i:int
var f:float = 10

var voices

func _ready() -> void:
	voices = DisplayServer.tts_get_voices()
	DisplayServer.tts_speak("Hello from Godot", voices[0]["id"])
	
	pass
	
func _process(delta: float) -> void:

	pass


func _on_area_3d_area_entered(area: Area3D) -> void:
	
	# print("I collided!!!")
	pass # Replace with function body.


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.name == "player":		
		DisplayServer.tts_speak("I collided with the player", voices[0]["id"])
		print("I collided!!!")
	
	if body.is_in_group("player"):
		DisplayServer.tts_speak("I collided with the player", voices[0]["id"])
		print("I collided!!!")
	
	pass # Replace with function body.
	
	
	
	
	
	
	
	
	
	
	
