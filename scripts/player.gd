extends CharacterBody2D

@onready var _direction : Vector2 = Vector2.ZERO
@onready var _sprinting : bool = false
@onready var _sprintSpeed : float = 0.0

@onready var _startPosition = self.transform.get_origin()

const _SPEED : float = 5000.0

func _process(delta):
	_sprintSpeed = 2.0 if (_sprinting) else 1.0
	
	# Key listeners
	if (Input.is_action_pressed("Sprint")):
		_sprinting = true
	else:
		_sprinting = false


func _physics_process(delta : float) -> void:
	_movement(delta)
	_animation()
	move_and_slide()


func _movement(delta : float) -> void:
	# Verifies player direction
	_direction = Input.get_vector("MoveLeft", "MoveRight", "MoveUp", "MoveDown")
	_direction = _direction.normalized() # Diagonals don't duplicate player's speed
	
	self.velocity = _direction * (_SPEED * delta) * _sprintSpeed


func _animation() -> void:
	# Animation tree (temporary)
	if (_sprinting):
		$animation.play("sprint")
	elif (_direction.y == -1):
		$animation.play("running_up")
	elif (_direction.y == 1):
		$animation.play("running_down")
	elif (_direction.x != 0):
		$animation.play("running_side")
		$animation.flip_h = false if (_direction.x > 0) else true
	else:
		$animation.play("idle")
