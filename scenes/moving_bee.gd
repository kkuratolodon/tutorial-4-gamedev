extends RigidBody2D

@export var speed : float

signal player_hit(damage: int)


var damage: int = 1

func _ready():
	var player = get_tree().current_scene.find_child("Player", true, false)
	if player:
		connect("player_hit", Callable(player, "get_damage"))
	connect("body_entered", self._on_body_entered)
	linear_velocity = Vector2(speed * scale.x, 0)

func _on_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		player_hit.emit(damage)
		queue_free()
	else:
		queue_free()
