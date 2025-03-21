extends TextureButton

@onready var pause_screen = $"../../PauseScreen"

func _ready():
    pressed.connect(_on_pressed)

func _on_pressed():
    pause_screen.pause_game()
