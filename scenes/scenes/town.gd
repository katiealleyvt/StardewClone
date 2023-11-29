extends Main
var homeScene: PackedScene = preload("res://scenes/scenes/home.tscn")
func _on_exit_body_entered(body):
	get_tree().change_scene_to_packed(homeScene)
