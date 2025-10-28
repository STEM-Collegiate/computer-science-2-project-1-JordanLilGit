extends Node2D

#Set values
var speed: float = 350

#Function to move forward
func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	
#Signal to restart game
func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
	
#Function to increase score
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	Manager.score += 1
	if Manager.score > Manager.highscore:
		Manager.highscore = Manager.score
	pass
