extends RigidBody2D

var vertical_accel = Vector2(0,1)
var horizontal_accel = Vector2(10,0) 
var thrust = Vector2()
@onready var camera = $Camera2D
var camera_size

func _ready():
	camera.make_current()
	camera_size = get_viewport_rect().size * camera.zoom
	print(camera_size)

func handle_input():
	if Input.is_action_pressed("up"):
		self.apply_impulse(-vertical_accel)
	if Input.is_action_pressed("down"):
		self.apply_impulse(vertical_accel)
	if Input.is_action_pressed("left"):
		self.apply_impulse(-horizontal_accel)
	if Input.is_action_pressed("right"):
		self.apply_impulse(horizontal_accel)		

func _physics_process(delta):
	handle_input()
	
	
