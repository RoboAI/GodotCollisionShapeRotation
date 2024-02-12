extends TextureRect

const SPEED = 5.0

func _process(delta):
	var direction = Input.get_axis("object_left", "object_right")
	if direction:
		position.x += direction * SPEED
	#else:
		#position.x += move_toward(position.x, 0, SPEED)

	direction = Input.get_axis("object_up", "object_down")
	if direction:
		position.y += direction * SPEED
	#else:
		#position.y += move_toward(position.y, 0, SPEED)
