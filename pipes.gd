extends Node2D

#Set values
var speed: float = 400
@onready var timer: Timer = $Timer

#Function to move forward
func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	
#Function to slow down game on death
func _on_area_2d_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.25
	timer.start()
	
#Function to restart game
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
	
#Function to increase score
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	Manager.score += 1
	if Manager.score > Manager.highscore:
		Manager.highscore = Manager.score
	pass
