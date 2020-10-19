extends KinematicBody2D

var health = 50
var damage = 35
var speed = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)

func _physics_process(delta):
	move_and_collide(Vector2(speed * delta, 0))
	
func is_instanced_from_scene(p_mode):
	if not p_mode.filename.empty():
		return true
	else:
		return false
func _process(delta):
	pass
	
		
		
