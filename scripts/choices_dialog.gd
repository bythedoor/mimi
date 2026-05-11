extends PanelContainer

signal SELECTED(index)

@onready var choices_list = $"MarginContainer/Choices"
@onready var choice_default = $"MarginContainer/Choices/ChoiceButton"

# list of choices available to the player
var choices:
	set(value):
		choices = value
		initButtons()
	
	
# Called when: the node enters the scene tree for the first time.
func _ready() -> void:
	choices_list.get_child(0).pressed.connect(onChoice.bind(0))

func onChoice(index):
	visible = false
	SELECTED.emit(index)
	
func initButtons():
	var button
	
	# deleting old buttons
	while choices_list.get_child_count() > 1:
		button = choices_list.get_child(choices_list.get_child_count() - 1)
		choices_list.remove_child(button)
		button.queue_free()
	
	# adding the new ones
	for index in range(choices.size()):
		if (index == 0):
			choices_list.get_child(0).text = choices[index]
		else:
			choices_list.add_child(choice_default.duplicate())
			choices_list.get_child(index).text = choices[index]
			choices_list.get_child(index).pressed.connect(onChoice.bind(index))
