extends Area2D
var has_key:bool = false


# Called when the node enters the scene tree for the first time.
func _on_leveltransition_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if body.has_key == true:
			print("Paina E mennäksesi seuraavan kerrokseen")
			if Input.is_action_just_pressed("Interact"):
				get_tree().change_scene_to_file("res://tech_level_2.tscn")
		else:
			print("Hissi toimii avainkortilla")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact"):
				get_tree().change_scene_to_file("res://tech_level_2.tscn")
