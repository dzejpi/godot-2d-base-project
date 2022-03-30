extends Node2D


onready var dev_logo_sprite = $DevLogoSprite
onready var jam_logo_sprite = $JamLogoSprite

var screen_width = (OS.window_size.x / 2)
var screen_height = (OS.window_size.y / 2)

# Logos displayed
var logos_displayed = 0
var logo_display_speed = 0.1
var logo_displaying = true


func _ready():
	# Set sprite offsets according to the window size
	dev_logo_sprite.offset.x = screen_width
	dev_logo_sprite.offset.y = screen_height
	# Opacity
	dev_logo_sprite.modulate.a = 0
	
	jam_logo_sprite.offset.x = screen_width
	jam_logo_sprite.offset.y = screen_height
	# Opacity
	jam_logo_sprite.modulate.a = 0


func _process(delta):
	match logos_displayed:
		0:
			process_dev_logo(delta)
		1:
			process_jam_logo(delta)
		2:
			go_to_main_menu()


func process_dev_logo(delta):
	if logo_displaying:
		if dev_logo_sprite.modulate.a < 1:
			dev_logo_sprite.modulate.a += logo_display_speed * delta * 8
		else:
			logo_displaying = false
	else:
		if dev_logo_sprite.modulate.a > 0:
			dev_logo_sprite.modulate.a -= logo_display_speed * delta * 8
		else:
			logos_displayed += 1
			logo_displaying = true


func process_jam_logo(delta):
	if logo_displaying:
		if jam_logo_sprite.modulate.a < 1:
			jam_logo_sprite.modulate.a += logo_display_speed * delta * 8
		else:
			logo_displaying = false
	else:
		if jam_logo_sprite.modulate.a > 0:
			jam_logo_sprite.modulate.a -= logo_display_speed * delta * 8
		else:
			logos_displayed += 1
			logo_displaying = true


func go_to_main_menu():
	get_tree().change_scene("res://scenes/MainMenuScene.tscn")
