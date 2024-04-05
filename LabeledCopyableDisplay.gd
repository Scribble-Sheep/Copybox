class_name LabeledCopyableDisplay

extends MarginContainer


static var copyable_display_scene := preload("res://LabeledCopyableDisplay.tscn")
var copy_string := "Unset string"
var name_string := "SOMETHING IS WRONG"
@onready var string_label := %CopyLabel
@onready var name_label := %TitleLabel

static func create_display(new_copy_string:String, new_name_string:= "COPY")-> LabeledCopyableDisplay:
	var new_display:= copyable_display_scene.instantiate()
	new_display.copy_string = new_copy_string
	new_display.name_string = new_name_string
	return new_display


func _ready() -> void:
	string_label.text = copy_string
	name_label.text = name_string


func _on_closebutton_pressed() -> void:
	EventBus.attempt_close_display.emit(self)


func _on_copybutton_pressed() -> void:
	DisplayServer.clipboard_set(copy_string)
