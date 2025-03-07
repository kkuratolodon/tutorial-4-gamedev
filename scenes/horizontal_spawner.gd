extends Node2D

@export var obstacle : PackedScene
@export var cooldown : float

@export var u = -1000
@export var d = 1000

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.y = spawn_pos.y + randf_range(u, d)

	spawned.global_position = spawn_pos

func repeat():
	spawn()
	await get_tree().create_timer(cooldown).timeout
	repeat()
