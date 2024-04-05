extends TabContainer


@onready var raw_text := %Textblob
@onready var delimeter_toggle := %DelimeterToggle
@onready var delimiter_edit := %DelimitEdit


func _on_initbutton_pressed() -> void:
	if raw_text.text == "":
		return
	current_tab +=1
	
	var delimit:String
	
	if !delimeter_toggle.button_pressed:
		delimit = "\n"
	else:
		delimit = delimiter_edit.text

	EventBus.initialize.emit(raw_text.text, delimit)


func _on_delimeter_toggle_toggled(toggled_on: bool) -> void:
	delimiter_edit.editable = toggled_on
