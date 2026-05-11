extends Control

@onready var storyScreen = $"../StoryScreen"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%Play.pressed.connect(play)
	%Quit.pressed.connect(quit_game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func play():
	self.visible = false
	storyScreen.visible = true
	storyScreen.startStory()
	
func quit_game():
	get_tree().quit()
