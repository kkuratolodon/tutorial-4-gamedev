extends Panel

@export var hp_container: Array[TextureRect]
@export var hp_textures: Array[Texture2D]

func _ready() -> void:
	var player = get_tree().current_scene.find_child("Player", true, false)
	
	if player:
		player.connect("update_hp", Callable(self, "update_hp"))


func update_hp(hp: int) -> void:
	var tmp = hp
	for i in range(3):
		if tmp <= 0:
			hp_container[i].texture = hp_textures[0]
		elif tmp == 1:
			hp_container[i].texture = hp_textures[1]
		else:
			hp_container[i].texture = hp_textures[2]
		tmp -= 2
