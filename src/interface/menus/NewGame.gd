extends Button

const game_scene = preload("res://src/main/Game.tscn")

func _ready() -> void:
	randomize()

func _on_NewGame_pressed() -> void:
	execute()
	
func execute():
	var game = game_scene.instance()
	get_tree().get_root().add_child(game)
	game.prepare_levels()
	game.load_level_byId(0)
	get_node("../../").queue_free()
