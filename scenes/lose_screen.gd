class_name LoseScreen
extends Node2D

static var last_level: String = "Level1"


func _process(delta: float) -> void:
    if Input.is_action_just_pressed("restart"):
        get_tree().change_scene_to_file("res://scenes/" + last_level + ".tscn")