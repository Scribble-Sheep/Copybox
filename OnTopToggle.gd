extends CheckBox


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_toggled(toggled_on: bool) -> void:
	get_window().always_on_top = toggled_on
