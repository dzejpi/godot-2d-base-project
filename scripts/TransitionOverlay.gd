extends Node2D


var time_out = 0
onready var transition_overlay_sprite = $TransitionSprite


func _ready():
	transition_overlay_sprite.modulate.a = 0


func _process(delta):
	if time_out < 1:
		time_out += (2 * delta)
		transition_overlay_sprite.modulate.a = 1 - time_out
