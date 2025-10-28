extends CharacterBody2D

#Set values
var gravity : float = 981
var jumpforce : float = 400
func _ready():
	$VisibleOnScreenNotifier2D.screen_exited.connect(_on_screen_exited)

#Function for physics
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jumpforce
	move_and_slide()
	
#Function for exiting screen
func _on_screen_exited():
	get_tree().reload_current_scene()
