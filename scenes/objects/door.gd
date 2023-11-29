extends Area2D


func _on_body_entered(body):
	$AnimatedSprite2D.play("door_open")


func _on_body_exited(body):
	$AnimatedSprite2D.play("door_close")
