extends KinematicBody2D

var speed = 100
var health = 100
var shields = 100
var ammo_1 = 50
var ammo_2 = 50
var healUse = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-speed * delta, 0))
	elif Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * delta, 0))
		
