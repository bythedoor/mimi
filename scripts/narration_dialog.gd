extends PanelContainer

@onready var label = $MarginContainer/VBoxContainer/Label

var text:String:
	set(value):
		text = value
		label.text = text
		label.visible_characters = 0
		

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
