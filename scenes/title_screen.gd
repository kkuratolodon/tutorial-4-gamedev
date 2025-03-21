class_name TitleScreen
extends Node2D

func _ready():
    pass

func _on_new_game_button_pressed():
    get_tree().change_scene_to_file("res://scenes/Level1.tscn")

func _on_stage_select_button_pressed():
    get_tree().change_scene_to_file("res://scenes/StageSelect.tscn")
