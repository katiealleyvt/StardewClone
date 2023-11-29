extends CharacterBody2D

signal showDialogueOption(dialogue: String)
signal hideDialogueOption

var dialogue: String = "What a wonderful day it is.  Don't you think?"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
	





func _on_dialogue_range_body_entered(body):
	showDialogueOption.emit(dialogue)


func _on_dialogue_range_body_exited(body):
	hideDialogueOption.emit()
