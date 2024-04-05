extends VBoxContainer

@onready var strip_toggle = %StripToggle

func _ready()-> void:
	EventBus.initialize.connect(_on_initialize)


func _on_initialize(inString:String, delimiter:String)->void:
	for child in get_children():
		child.queue_free()
	
	var inStringArr
	
	match delimiter:
		"":
			inStringArr = [inString]
		_:
			inStringArr = inString.split(delimiter, false)
	
	if !inStringArr is Array and inStringArr.size()==0:
		return
	
	for s in inStringArr:
		if strip_toggle.button_pressed:
			s = s.strip_edges()
		var newchild:LabeledCopyableDisplay = LabeledCopyableDisplay.create_display(s)
		add_child(newchild)
