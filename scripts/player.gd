extends RigidBody2D

var up_accel = Vector2(0,-4)
var down_accel = Vector2(0,2)
var horizontal_accel = Vector2(10,0) 
var camera_size
signal player_entered_ghost
func handle_input():
	if Input.is_action_pressed("up"):
		self.apply_impulse(up_accel)
	if Input.is_action_pressed("down"):
		self.apply_impulse(down_accel)
	if Input.is_action_pressed("left"):
		self.apply_impulse(-horizontal_accel)
	if Input.is_action_pressed("right"):
		self.apply_impulse(horizontal_accel)		

func handle_collision(body: Node):
	print("Collided")
	#var oneshot = body.get_node("Oneshot")
	
	#if oneshot: 
	#	oneshot.play()
		
	#print("Collided")	
	
func _physics_process(delta):
	handle_input()

func _on_body_entered(body: Node):
	handle_collision(body)

func _on_oneshot_finished() -> void:
	pass # Replace with function body.

func _on_ghost_body_entered(body: Node2D) -> void:
	player_entered_ghost.emit()
	print("Player entered.")
	
