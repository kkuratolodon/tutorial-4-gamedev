class_name WinScreen
extends Node2D

static var last_level: String = "Level1"
static var final_score: int = 0

func _ready():
    # Setup fade-in transition
    $CanvasLayer/Panel.visible = true
    $AnimationPlayer.play("new_animation")
    
func _process(delta: float) -> void:
    if Input.is_action_just_pressed("restart"):
        _go_to_stage_select()
        
func _on_main_menu_button_pressed() -> void:
    _transition_to_scene("res://scenes/TitleScreen.tscn")

func _on_stage_select_button_pressed() -> void:
    _go_to_stage_select()

func _go_to_stage_select() -> void:
    _transition_to_scene("res://scenes/StageSelect.tscn")

func _transition_to_scene(scene_path: String) -> void:
    # Play fade out animation
    get_tree().change_scene_to_file(scene_path)
