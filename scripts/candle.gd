extends Area2D

@onready var interactionButtonScene : PackedScene = preload("res://scenes/interaction_button.tscn")
@onready var interactionButton : Node2D

func _on_body_entered(body):
	# Instantiate and show the HUD button for interaction
	interactionButton = interactionButtonScene.instantiate()
	self.add_child(interactionButton)


func _on_body_exited(body):
	interactionButton.queue_free()
