extends VBoxContainer


func _ready()-> void:
	EventBus.initialize.connect(_on_initialize)


func _on_initialize(inString:String, delimiter:String)->void:
	for child in get_children():
		child.queue_free()
	var inStringArr = inString.split(delimiter, false)
	if !inStringArr is Array and inStringArr.size()==0:
		return
	
	for s in inStringArr:
		var newchild:LabeledCopyableDisplay = LabeledCopyableDisplay.create_display(s)
		add_child(newchild)
