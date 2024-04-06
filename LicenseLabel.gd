extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Copybox Version 1.0\n\n"
	text +="This program was created by Sheep Undefined, aka Scribble-Sheep, using Godot %s.%s.%s.\n\n"%[Engine.get_version_info().major,Engine.get_version_info().minor,Engine.get_version_info().patch]
	text += "This game uses Godot Engine, available under the following license:\n"
	text += Engine.get_license_text()
	text += "\n\nPortions of this software are copyright ©%s The FreeType Project (www.freetype.org). All rights reserved.\n\n"%"2023"
	text += "Copyright The Mbed TLS Contributors\nLicensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at\nhttp://www.apache.org/licenses/LICENSE-2.0\nUnless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.\n\n"
