extends Node2D

#Retrieve pipes scene
@onready var pipes = preload("res://scenes/pipes.tscn")

#Reset score on reset
func _ready() -> void:
	Manager.score = 0

#Make label display score
func _process(delta: float) -> void:
	$Label.text = str(Manager.score)

#Timer function
func _on_timer_timeout() -> void:
	var pipesInstance = pipes.instantiate()
	pipesInstance.position.x = 1152
	pipesInstance.position.y = randi_range(150,-150)
	add_child(pipesInstance)
	$Timer.start()
	pass
