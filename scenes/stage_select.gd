class_name StageSelect
extends Node2D

func _on_level1_button_pressed():
    _transition_to_scene("res://scenes/Level1.tscn")

func _on_level2_button_pressed():
    _transition_to_scene("res://scenes/Level2.tscn")

func _on_back_button_pressed():
    _transition_to_scene("res://scenes/TitleScreen.tscn")

func _transition_to_scene(scene_path: String):
    get_tree().change_scene_to_file(scene_path)
