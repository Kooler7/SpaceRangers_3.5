extends Node2D



var closed_position_right := Vector2(0, 0)
var open_position_right := Vector2(300, 0)
var closed_position_left := Vector2(0, 0)
var open_position_left := Vector2(-400, 0)

onready var right_door := $RightDoor
onready var left_door := $LeftDoor
onready var right_door_move := $RightDoorTween
onready var left_door_move := $LeftDoorMove



func _ready():
	Events.connect("activate_environment", self, "toggle_doors")
	pass






func toggle_doors():
	right_door_move.interpolate_property(right_door, "position", closed_position_right, open_position_right, 0.5, Tween.TRANS_LINEAR)
	left_door_move.interpolate_property(left_door, "position", closed_position_left, open_position_left, 0.5, Tween.TRANS_LINEAR)
	right_door_move.start()
	left_door_move.start()
	yield(get_tree().create_timer(2),"timeout")
	right_door_move.interpolate_property(right_door, "position", open_position_right, closed_position_right, 0.5, Tween.TRANS_LINEAR)
	left_door_move.interpolate_property(left_door, "position", open_position_left, closed_position_left, 0.5, Tween.TRANS_LINEAR)
	right_door_move.start()
	left_door_move.start()


