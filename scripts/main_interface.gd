extends Node2D

# node connection
@onready var mimi: Sprite2D = $mimi

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_sleep_timer_timeout() -> void:
	var new_picture = CompressedTexture2D.new()
	new_picture = load("res://images/sleepy.jpeg")
	mimi.set_texture(new_picture)
	print("mimi is tired :(")
	
