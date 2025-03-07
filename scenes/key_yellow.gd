extends Sprite2D

@export var positions: Array[Vector2]

@onready var tilemap_layer = $"../TileMapLayer"

func _ready() -> void:
    pass

func _on_area_2d_body_entered(body: Node2D) -> void:
    if body.get_name() == "Player":
        var processed_coords = []
        for pos in positions:
            var coords = Vector2i(floor(pos.x / tilemap_layer.tile_set.tile_size.x), 
                floor(pos.y / tilemap_layer.tile_set.tile_size.y))
            
            if not coords in processed_coords:
                processed_coords.append(coords)
                tilemap_layer.erase_cell(coords)
                tilemap_layer.erase_cell(Vector2i(abs(coords.x), coords.y))
        queue_free()