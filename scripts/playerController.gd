extends CharacterBody2D

@export var speed: float = 200.0

func _physics_process(_delta: float) -> void:
	# Use Godot’s default UI actions (arrow keys)
	var dir := Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down")  - Input.get_action_strength("ui_up")
	)
	if dir.length() > 0.0:
		dir = dir.normalized()
	velocity = dir * speed
	move_and_slide()
