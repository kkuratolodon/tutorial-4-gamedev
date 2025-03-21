class_name LoseScreen
extends Node2D

static var last_level: String = "Level1"
static var final_score: int = 0

func _ready():
    # Setup fade-in transition
    $CanvasLayer/Panel.visible = true
    $AnimationPlayer.play("new_animation")
    
func _process(delta: float) -> void:
    if Input.is_action_just_pressed("restart"):
        _restart_level()
        
func _on_button_pressed() -> void:
    _transition_to_scene("res://scenes/" + last_level + ".tscn")

func _on_main_menu_button_pressed() -> void:
    _transition_to_scene("res://scenes/TitleScreen.tscn")

func _restart_level() -> void:
    _transition_to_scene("res://scenes/" + last_level + ".tscn")

func _transition_to_scene(scene_path: String) -> void:
    # Play fade out animation
    get_tree().change_scene_to_file(scene_path)