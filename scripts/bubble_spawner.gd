extends Node2D
var bubble = preload("res://prefabs/npc_bubble.tscn")


func _on_timer_timeout() -> void:
	var new_bubble = bubble.instantiate()
	new_bubble.gravity_scale = randf_range(-.8,-1)
	new_bubble.position = Vector2(randf_range(-900,900),position.y)

	add_child(new_bubble)
