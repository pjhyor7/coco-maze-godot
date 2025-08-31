extends Area2D
signal picked()

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("player"):
		print("+1 collected")
		picked.emit()
		queue_free()
