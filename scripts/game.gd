extends Node

@onready var titleScreen = $TitleScreen
@onready var storyScreen = $StoryScreen

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	titleScreen.visible = true
	storyScreen.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
