extends Control

@onready var pause_menu = $Pause
#@onready var pause = $CanvasLayer/pauseyan
var paused = false
#var bag_open = false

func _ready():
	get_tree().paused = false



func _on_yeah_pressed():       # unpause tree
	get_tree().change_scene_to_file("res://testingmuna.tscn")
