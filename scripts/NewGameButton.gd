extends TextureButton


var time_out = 0
var button_pressed = false
onready var transition_overlay_sprite = $"../../TransitionOverlay/TransitionSprite"


func _ready():
	pass


func _process(delta):
	if button_pressed:
		if time_out < 1:
			time_out += (2 * delta)
			transition_overlay_sprite.modulate.a = time_out
		else:
			get_tree().change_scene("res://scenes/GameSceneOne.tscn")


func _on_NewGameButton_pressed():
	button_pressed = true
