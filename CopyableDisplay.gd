class_name CopyableDisplay

extends MarginContainer


static var copyable_display_scene := preload("res://CopyableDisplay.tscn")
var copy_string := "Unset string"
@onready var string_label := $HBoxContainer/ScrollContainer/StringLabel

static func create_display(new_copy_string:String)-> CopyableDisplay:
	var new_display:CopyableDisplay = copyable_display_scene.instantiate()
	new_display.copy_string = new_copy_string
	return new_display


func _ready() -> void:
	string_label.text = copy_string


func _on_closebutton_pressed() -> void:
	EventBus.attempt_close_display.emit(self)


func _on_copybutton_pressed() -> void:
	DisplayServer.clipboard_set(copy_string)
