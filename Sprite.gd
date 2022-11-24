extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _physics_process(delta):
	var facing = Vector2(cos(rotation), sin(rotation))
	move_and_collide(facing * 10)


func _on_Area2D_area_entered(area):
	print(area.name)


func _on_Area2D2_area_entered(area):
	print("2", area.name)
