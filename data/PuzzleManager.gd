extends Node

var puzzles = []
var selected_puzzles = []

func load_puzzles():
	var file = FileAccess.open("res://data/puzzles_easy.json", FileAccess.READ)
	var content = file.get_as_text()
	var json = JSON.parse_string(content)
	puzzles = json["puzzles"]

func randomize_puzzles():
	puzzles.shuffle()
	selected_puzzles = puzzles.slice(0,4)

func show_puzzle(index):
	print(selected_puzzles[index]["question"])

func check_answer(index, player_answer):

	var correct = selected_puzzles[index]["answer"]

	if player_answer == correct:
		print("Correct!")
	else:
		print("Wrong answer")
