extends CharacterBody2D

@onready var _direction : Vector2 = Vector2.ZERO

const _SPEED : float = 10000.0

func _physics_process(delta : float) -> void:
	_movement(delta)
	_animation()
	move_and_slide()

func _movement(delta : float) -> void:
	# Verifies player direction
	_direction = Input.get_vector("MoveLeft", "MoveRight", "MoveUp", "MoveDown")
	_direction = _direction.normalized() # Diagonals don't duplicate player's speed
	
	self.velocity = _direction * (_SPEED * delta)


func _animation() -> void:
	# Animation tree (temporary)
	if (_direction.y == -1):
		$animation.play("running_up")
	elif (_direction.y == 1):
		$animation.play("running_down")
	elif (_direction.x != 0):
		$animation.play("running_side")
		$animation.flip_h = false
		if (_direction.x < 0):
			$animation.flip_h = true
	else:
		$animation.play("idle")
