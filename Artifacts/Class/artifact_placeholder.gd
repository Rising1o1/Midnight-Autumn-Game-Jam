class_name Artifact extends Node3D

@export var staticBody: StaticBody3D


func photographed():
	staticBody.set_collision_layer_value(1, false)
	staticBody.set_collision_mask_value(1, false)
