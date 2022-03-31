extends TextureButton


var music_on = true
onready var music_label = $"MusicLabel"


func _ready():
	pass


func _process(delta):
	if music_on:
		pass
	else:
		pass


func _on_MusicButton_pressed():
	if music_on:
		music_on = false
		music_label.text = "Music: Off"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), true)
		release_focus()
	else:
		music_on = true
		music_label.text = "Music: On"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), false)
