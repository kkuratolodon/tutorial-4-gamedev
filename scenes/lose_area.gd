extends Area2D

@export var sceneName: String = "level_1"

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		if sceneName.begins_with("Level"):
			LoseScreen.last_level = sceneName
			print(LoseScreen.last_level)
		get_tree().change_scene_to_file("res://scenes/" + sceneName + ".tscn")
