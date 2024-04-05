extends CheckBox


@onready var toggled_child := %FlipToggle


func _on_toggled(toggled_on: bool) -> void:
	toggled_child.disabled = !toggled_on
