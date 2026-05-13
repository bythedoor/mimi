extends Control

signal END_OF_STORY

@export var story_flow:PackedScene

@onready var choicesDialog = $ChoicesDialog
@onready var narrationDialog = $NarrationDialog
@onready var button = $ChoicesDialog/MarginContainer/Choices/ChoiceButton

var startBeat
var currentBeat

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func startStory():
	startBeat = story_flow.instantiate()
	choicesDialog.visible = false
	currentBeat = startBeat
	narrate(currentBeat)
	
func narrate(beat):
	narrationDialog.visible = true
	narrationDialog.text = beat.text
	narrationDialog.get_node("MarginContainer/VBoxContainer/Button").visible = true

func _on_advance_beat() -> void:
	if (currentBeat.jumpToNode != ""):
		jumpToNode(currentBeat.jumpToNode)
	else:			
		if (currentBeat.get_child_count() == 0):
			END_OF_STORY.emit()
		else:
			if (currentBeat.choices.size() > 0):
				narrationDialog.get_node("MarginContainer/VBoxContainer/Button").visible = false
				choicesDialog.visible = true
				choicesDialog.choices = currentBeat.choices
			else:
				choicesDialog.visible = false
				currentBeat = currentBeat.get_child(0)
				narrate(currentBeat)


func jumpToNode(path):
	currentBeat = startBeat.get_node(path)
	narrate(currentBeat)


func _on_choice_selected(index: Variant) -> void:
	currentBeat = currentBeat.get_child(index)
	narrate(currentBeat) # Replace with function body.
