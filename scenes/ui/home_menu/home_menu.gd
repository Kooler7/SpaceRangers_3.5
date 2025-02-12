extends UI

onready var tween_menu := $Tween
onready var yes_button := $YesBTN
onready var no_button := $NoBTN
var child_number := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_YesBTN_mouse_entered() -> void:
	btn_hover_state(yes_button, child_number)
func _on_YesBTN_mouse_exited() -> void:
	btn_idle_state(yes_button, child_number)
func _on_YesBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	dismiss_sub_menu(self, EXIT_END_POSITION, EXIT_INIT_POSITION)
	get_tree().paused = false
	Globals.set_current_flow("main_menu")
	Events.emit_signal("change_scene_called")


func _on_NoBTN_mouse_entered() -> void:
	btn_hover_state(no_button, child_number)
func _on_NoBTN_mouse_exited() -> void:
	btn_idle_state(no_button, child_number)
func _on_NoBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	dismiss_sub_menu(self, EXIT_END_POSITION, EXIT_INIT_POSITION)
	get_tree().paused = false
