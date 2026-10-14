extends Node3D

@onready var raycast: RayCast3D = $Camera3D/RayCast3D
@onready var camera: Camera3D = $Camera3D
@onready var character: CharacterBody3D = $CharacterBody3D


func _process(_delta: float) -> void:
	raycast.position = Vector3(0, 0, 0)
	raycast.target_position = camera.rotation * Vector3(0, 0, 1) + Vector3(0, 0, -10)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Click"):
		if raycast.get_collider():
			var object = raycast.get_collider()
			if object.get_parent() is Artifact:
				var artifact = object.get_parent()
				artifact.photographed()
