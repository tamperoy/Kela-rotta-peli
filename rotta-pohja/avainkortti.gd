extends Area2D


# Called when the node enters the scene tree for the first time.
func _on_body_entered(body:Node2D) -> void:
	print("Jokin tuli avainkortin alueelle!")
	if body.is_in_group("player"):
		body.collect_key()
		queue_free()
