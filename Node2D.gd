extends Control
var story = "Your in mind  is %s \nYour want to do %s \nYou want to be with %s \ndid you think %s"
var answers = []
var questions = []
var questions_number = 0

func _ready():
	questions.append("1. What does the goal you have in mind ?")
	questions.append("2. What do your want to do in 10 years ?")
	questions.append("3. The person you want to be with ?")
	questions.append("4. What did you think of the last question ?")
	$DisplayText.text = questions[0]
	
func _on_Play_Button_pressed():
	if questions_number < len(questions)-1: 
		answers.append($PlayerInput.text)
		print(answers)
		$PlayerInput.text = ""
		$DisplayText.text = questions[questions_number + 1]
		questions_number = questions_number + 1
	elif questions_number == len(questions)-1:
		answers.append($PlayerInput.text)
		print(answers)
		$PlayerInput.text = ""
		$DisplayText.text = story % answers