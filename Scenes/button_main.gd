extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Datanalang.tscn")


func _on_how_to_play_pressed() -> void:
	get_tree().change_scene_to_file("res://htp.tscn")
	pass # Replace with function body.



func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://ayoslang.tscn")
	pass # Replace with function body.
	
	


func _on_exit_pressed() -> void:
	get_tree().quit()
