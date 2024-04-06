extends VBoxContainer

var displaybox := preload("res://LabeledCopyableDisplay.tscn")
@onready var strip_toggle := %StripToggle
@onready var title_toggle := %TitlesToggle
@onready var flip_toggle := %FlipToggle

func _ready()-> void:
	EventBus.initialize.connect(_on_initialize)


func _on_initialize(inString:String, delimiter:String)->void:
	for child in get_children():
		child.queue_free()
	
	var inStringArr
	
	if delimiter == "":
		inStringArr = inString.split("\n", false)
	else:
		inStringArr = inString.split(delimiter, false)
	
	if !inStringArr is Array and inStringArr.size()==0:## Unhappy early return.
		return
	
	if title_toggle.button_pressed:
		if inStringArr.size()%2: ## Unhappy early return.
			var newchild:= displaybox.instantiate()
			add_child(newchild)
			newchild.initialize("Error, not all titles have a matching content block.", "")
		else:
			for i in inStringArr.size():
				var s:String
				var t:String
				
				if i%2:
					continue ## We are in a content. Early Return.
					
				if strip_toggle.button_pressed:
					s = inStringArr[i+1].strip_edges()
					t = inStringArr[i].strip_edges()
				else:
					s = inStringArr[i+1]
					t = inStringArr[i]
				var newchild:= displaybox.instantiate()
				add_child(newchild)
				if flip_toggle.button_pressed:
					newchild.initialize(t, s)
				else:
					newchild.initialize(s, t)
	else:
		for s in inStringArr:
			if strip_toggle.button_pressed:
				s = s.strip_edges()
			var newchild:= displaybox.instantiate()
			add_child(newchild)
			newchild.initialize(s)
