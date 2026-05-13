extends Control

@onready var storyScreen = $"../StoryScreen"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%Quit.pressed.connect(quit_game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func quit_game():
	get_tree().quit()
