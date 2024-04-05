extends TabContainer


@onready var raw_text := $"Setup/Raw Text/TextEdit"
@onready var delimiter_edit := $Setup/DelimitEdit


func _on_initbutton_pressed() -> void:
	if raw_text.text == "":
		return
	current_tab +=1
	match delimiter_edit.text:
		"":
			EventBus.initialize.emit(raw_text.text, "\n")
		_:
			EventBus.initialize.emit(raw_text.text, delimiter_edit.text)
