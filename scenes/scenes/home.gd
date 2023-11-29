extends Main
var townScene: PackedScene = preload("res://scenes/scenes/town.tscn")
func _on_exit_body_entered(body):
	get_tree().change_scene_to_packed(townScene)
