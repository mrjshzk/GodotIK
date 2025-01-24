@tool
extends GodotIK

@export var radius = 0.1
# Called when the node enters the scene tree for the first time.
var mesh_instances = []

func _ready() -> void:

	modification_processed.connect(debug_positions)

func debug_positions():
	var positions = get_positions()
	for i in range(mesh_instances.size(), positions.size()):
		var mesh_instance = MeshInstance3D.new()
		var mesh = SphereMesh.new()
		mesh.height = radius * 2
		mesh.radius = radius
		mesh_instance.mesh = mesh
		mesh_instances.push_back(mesh_instance)
		mesh_instance.top_level = true
		get_parent().add_child(mesh_instance)

	for i in range(positions.size()):
		mesh_instances[i].global_position = get_parent().to_global(positions[i])
