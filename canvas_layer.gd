extends CanvasLayer

@onready var pause_menu = $Pause
@onready var pause = $pauseyan


var paused = false

func _ready() -> void:
	pause_menu.hide()
#	pause.pressed.connect()

func _on_pauseyan_pressed() -> void:
	pauseMenu()
	

func pauseMenu():
	if paused:
		pause_menu.hide()
		get_tree().paused = false
		paused = false
	else:
		pause_menu.show()
		get_tree().paused = true
		paused = true
