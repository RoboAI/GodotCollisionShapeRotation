extends Node2D

@onready var area_2d = $Area2D
@onready var area_collision = $Area2D/CollisionShape2D
@onready var area_2d2 = $Area2D2
@onready var area_collision2 = $Area2D2/CollisionShape2D
@onready var pt_1 = $TextureRect/Point1
@onready var pt_2 = $TextureRect/Point2
@onready var pt_3 = $TextureRect2/Point3
@onready var pt_4 = $TextureRect2/Point4

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var length
	var angle
	var center_pt
	
	length = (pt_3.global_position - pt_1.global_position).length()
	area_collision.shape.height = length
	angle = pt_1.get_angle_to(pt_3.global_position)
	area_2d.rotation_degrees = rad_to_deg(angle) + 90
	center_pt = pt_1.global_position + ((pt_3.global_position - pt_1.global_position) / 2)
	area_2d.position = center_pt
	
	length = (pt_4.global_position - pt_2.global_position).length()
	area_collision2.shape.height = length
	angle = pt_2.get_angle_to(pt_4.global_position)
	area_2d2.rotation_degrees = rad_to_deg(angle) + 90
	center_pt = pt_2.global_position + ((pt_4.global_position - pt_2.global_position) / 2)
	area_2d2.position = center_pt
	pass

func _on_area_2d_body_entered(body):
	print_debug("body entered")
	pass # Replace with function body.
