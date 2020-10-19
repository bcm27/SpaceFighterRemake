extends KinematicBody2D

var speed = 175
var health = 100
var shields = 100
var healUse = 3

var ammo_1 = 50
var bullet_01 = preload("res://Scenes/bullet_01.tscn")

var ammo_2 = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)

func _process(delta):
	# stay within the screen
	if Input.is_action_just_pressed("character_fire"):
		var bulletInstance = bullet_01.instance()
		# instead of spawning exact player position we offset it by 32
		bulletInstance.position = Vector2(position.x, position.y -32)
		get_tree().get_root().add_child(bulletInstance)
		# tree is the scene, root is the world scene, and then we add
		# the bullet instance
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-speed * delta, 0))
	elif Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * delta, 0))
		
