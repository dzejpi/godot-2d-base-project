extends TextureButton


# var a = 2


func _ready():
	pass


func _process(delta):
	pass


func _on_NewGameButton_pressed():
	get_tree().change_scene("res://scenes/GameSceneOne.tscn")
