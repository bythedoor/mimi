extends Node2D

# node connection
@onready var mimi: Panel = $mimi


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_food_pressed() -> void:
	var new_picture = StyleBoxTexture.new()
	new_picture.texture = load("res://shrek-meme.jpg")
	mimi.add_theme_stylebox_override("panel", new_picture)
	print("start giving mimi food")


func _on_sleep_pressed() -> void:
	print("put mimi to bed")
