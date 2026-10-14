extends CharacterBody3D

@onready var camera: Camera3D = $"../Camera3D"

const SPEED = 5.0
const JUMP_VELOCITY = 4.5


func _physics_process(delta: float) -> void:

	if not is_on_floor():
		velocity += get_gravity() * delta
	var inputDirection := Input.get_vector("Left", "Right", "Up", "Down")
	if inputDirection:
		get_parent_node_3d().global_position += Vector3(inputDirection.x, 0, inputDirection.y).rotated(Vector3.UP, camera.global_rotation.y).normalized() * SPEED * delta

	move_and_slide()
