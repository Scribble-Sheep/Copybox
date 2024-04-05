class_name LabeledCopyableDisplay

extends MarginContainer


var copy_string := "Unset string, SOMETHING IS WRONG"
@onready var string_label := %CopyLabel
@onready var name_label := %TitleLabel

func initialize(new_copy_string:String, new_name_string:= "COPY")-> void:
	copy_string = new_copy_string
	string_label.text = copy_string
	name_label.text = new_name_string


func _on_closebutton_pressed() -> void:
	queue_free()


func _on_copybutton_pressed() -> void:
	DisplayServer.clipboard_set(copy_string)
