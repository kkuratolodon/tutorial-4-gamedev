class_name PauseScreen
extends CanvasLayer

signal resume_game

func _ready():
    visible = false

func _input(event):
    if event.is_action_pressed("ui_cancel") and visible:
        _on_resume_button_pressed()

func pause_game():
    Spawner.is_paused = true
    visible = true
    get_tree().paused = true

func _on_resume_button_pressed():
    Spawner.is_paused = false
    visible = false
    get_tree().paused = false
    emit_signal("resume_game")

func _on_main_menu_button_pressed():
    get_tree().paused = false
    get_tree().change_scene_to_file("res://scenes/TitleScreen.tscn")
