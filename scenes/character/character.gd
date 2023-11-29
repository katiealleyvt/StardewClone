extends CharacterBody2D

var dialogueUI: PackedScene = preload("res://scenes/ui/dialogue.tscn")

var movementSpeed: int = 100
var canTalk: bool = false
var dialogueToShow: String
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * movementSpeed
	move_and_slide()
	if(direction == Vector2.ZERO):
		$AnimatedSprite2D.stop()
	if(direction == Vector2.DOWN):
		$AnimatedSprite2D.play("walk down")
	if(direction == Vector2.UP):
		$AnimatedSprite2D.play("walk up")
	if(direction == Vector2.LEFT):
		$AnimatedSprite2D.play("walk left")
	if(direction == Vector2.RIGHT):
		$AnimatedSprite2D.play("walk right")
	
	if(Input.is_action_just_pressed("action") and canTalk):
		var dialogue = dialogueUI.instantiate() as CanvasLayer
		dialogue.get_node("TextContainer/Text").text = dialogueToShow
		$UI.add_child(dialogue)
		


func _on_friend_show_dialogue_option(dialogue):
	canTalk = true
	dialogueToShow = dialogue;


func _on_friend_hide_dialogue_option():
	canTalk = false
	for child in $UI.get_children():
		child.queue_free()
