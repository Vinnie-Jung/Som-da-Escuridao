extends CharacterBody2D

@onready var _direction : Vector2 = Vector2.ZERO
@onready var _sprinting : bool = false
@onready var _sprintSpeed : float
@onready var _idleDirection : String = "idle_side"

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
		$animation.play("walking_up")
		_idleDirection = "idle_back"
		$collision.position.x = 0
	elif (_direction.y == 1):
		$animation.play("walking_down")
		_idleDirection = "idle_front"
		$collision.position.x = 0
	elif (_direction.x != 0):
		$animation.play("walking_side")
		$animation.flip_h = false if (_direction.x > 0) else true
		_idleDirection = "idle_side"
		
		# Adjusting collisior's position to fit animation
		$collision.position.x = -3 if (_direction.x > 0) else 3
	else:
		$animation.play(_idleDirection)
		$collision.position.x = 0


func _key_listeners() -> void:
	# Sprint
	if (Input.is_action_pressed("sprint") && !_sprinting):
		if ($sprint_timer.wait_time == 5.0 && $sprint_timer.time_left <= 0):
			_sprinting = true
			$sprint_timer.wait_time = 2.0
			$sprint_timer.start()
	
	# Interact 
	if (Input.is_action_pressed("interact")):
		print("Interect button pressed")
		pass
	
	# Inventory
	if (Input.is_action_pressed("inventory")):
		print("Inventory button pressed")
		pass
	
	# Settings
	if (Input.is_action_pressed("settings")):
		print("Settings button pressed")
		pass


func _on_sprint_timer_timeout():
	# when stops sprinting
	if (_sprinting):
		_sprinting = false
		$sprint_timer.wait_time = 5.0
		$sprint_timer.start()
