class_name FileHelp


static func touch(path):
	var dir = DirAccess.open(".")
	if !dir.dir_exists(".\\"+path):
		dir.make_dir(path)
