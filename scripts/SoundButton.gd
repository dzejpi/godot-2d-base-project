extends TextureButton


var sound_on = true
onready var sound_label = $"SoundLabel"


func _ready():
	pass


func _process(delta):
	if sound_on:
		pass
	else:
		pass


func _on_SoundButton_pressed():
	if sound_on:
		sound_on = false
		sound_label.text = "Sound: Off"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Sound"), true)
		release_focus()
	else:
		sound_on = true
		sound_label.text = "Sound: On"
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Sound"), false)
