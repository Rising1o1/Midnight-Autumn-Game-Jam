class_name Artifact extends Node3D

@export var staticBody: StaticBody3D


func photographed():
	staticBody.set_collision_layer_value(1, false)
	staticBody.set_collision_mask_value(1, false)
	spawnGhost()

func spawnGhost():
	var ghost := load("res://Ghosts/Tallman/TallMan.tscn").instantiate() as Node3D
	self.add_child(ghost)
	ghost.global_position = self.global_position + Vector3(0, 3, 0) 
