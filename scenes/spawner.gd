extends Node2D

@export var obstacle : PackedScene
@export var cooldown : float

@export var l = -1000
@export var r = 1000


func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(l, r)

	spawned.global_position = spawn_pos

func repeat():
	spawn()
	await get_tree().create_timer(cooldown).timeout
	repeat()
