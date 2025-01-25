extends RigidBody2D

var vertical_accel = Vector2(0,20)
var horizontal_accel = Vector2(20,0) 
var thrust = Vector2()
@onready var camera = $Camera2D

func _ready():
	camera.make_current()

func get_input():
	if Input.is_action_pressed("down"):
		print("down")
		
		

func _physics_process(delta):
	if Input.is_action_pressed("up"):
		self.apply_impulse(-vertical_accel)
	if Input.is_action_pressed("down"):
		self.apply_impulse(vertical_accel)
	if Input.is_action_pressed("left"):
		self.apply_impulse(-horizontal_accel)
	if Input.is_action_pressed("right"):
		self.apply_impulse(horizontal_accel)		
		
