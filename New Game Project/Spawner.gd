extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = load("res://Donut.tscn")
	var donut = scene.instantiate()
	add_child(donut)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
