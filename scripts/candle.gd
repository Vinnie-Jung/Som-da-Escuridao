extends Area2D

@onready var _playerIn : bool = false

func _on_body_entered(body):
	_playerIn = true
	print("In item area...")


func _on_body_exited(body):
	_playerIn = false
	print("Out of item area")
