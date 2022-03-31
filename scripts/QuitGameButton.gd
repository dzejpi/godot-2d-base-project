extends TextureButton


var platform = OS.get_name()


func _ready():
	# Disable if running in browser
	if platform == "HTML5":
		self.disabled = true


func _process(delta):
	pass


func _on_QuitGameButton_pressed():
	release_focus()
	get_tree().quit()
