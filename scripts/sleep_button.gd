extends Button

@export var mimi: Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	var new_picture = load("res://images/neutral-happy.jpeg")
	mimi.set_texture(new_picture)
	print(mimi)
	print("put mimi to bed")
