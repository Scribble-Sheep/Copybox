class_name Copyable

extends Node


var delimiter := "\n"
var rawstring := ""


static func load_from_file(path:String):
	FileHelp.touch("./savedCopyboxes")
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()


static func save_to_file(path:String, copyable:Copyable):
	var store_string :String= ""
	store_string += copyable.delimiter
	#path +="//%s.lab"%saved_labdata.lab_name
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(store_string)
