extends Control


func _ready()->void:
	PhysicsServer2D.set_active(false)
	PhysicsServer3D.set_active(false)
	OS.low_processor_usage_mode = true
