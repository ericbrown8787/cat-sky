extends Area2D

func _on_player_player_entered_ghost() -> void:
	$Oneshot.play()
