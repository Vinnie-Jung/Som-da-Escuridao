extends CharacterBody2D

@onready var _direction : Vector2 = Vector2.ZERO
@onready var _sprinting : bool = false
@onready var _sprintSpeed : float

const _SPEED : float = 50.0

func _process(delta : float) -> void:
	_sprintSpeed = 2.0 if (_sprinting) else 1.0
	
	_key_listeners()


func _physics_process(delta : float) -> void:
	delta *= 100
	
	_movement(delta)
	_animation()
	move_and_slide()


func _movement(delta : float) -> void:
	# Verifies player direction
	_direction = Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
	_direction = _direction.normalized() # Diagonals don't duplicate player's speed
	
	self.velocity = _direction * (_SPEED * delta) * _sprintSpeed


func _animation() -> void:
	# Animation tree (temporary)
	if (_sprinting && _direction != Vector2.ZERO):
		$animation.speed_scale = 1.5
	else:
		$animation.speed_scale = 1
		
	if (_direction.y == -1):
		$animation.play("moving_up")
	elif (_direction.y == 1):
		$animation.play("moving_down")
	elif (_direction.x != 0):
		$animation.play("moving_side")
		$animation.flip_h = false if (_direction.x > 0) else true
	else:
		$animation.play("idle")


func _key_listeners() -> void:
	# Sprint
	if (Input.is_action_pressed("sprint") && !_sprinting):
		if ($sprint_timer.wait_time == 5.0 && $sprint_timer.time_left <= 0):
			_sprinting = true
			$sprint_timer.wait_time = 2.0
			$sprint_timer.start()
	
	# Interact 
	if (Input.is_action_pressed("interact")):
		pass
	
	# Inventory
	if (Input.is_action_pressed("inventory")):
		pass
	
	# Settings
	if (Input.is_action_pressed("settings")):
		pass


func _on_sprint_timer_timeout():
	# when stops sprinting
	if (_sprinting):
		_sprinting = false
		$sprint_timer.wait_time = 5.0
		$sprint_timer.start()
