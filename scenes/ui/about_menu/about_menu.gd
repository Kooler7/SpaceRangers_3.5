extends UI

onready var tween_menu := $Tween
onready var yes_button := $YesBTN
var child_number := 0






func _on_YesBTN_mouse_entered() -> void:
	btn_hover_state(yes_button, child_number)
func _on_YesBTN_mouse_exited() -> void:
	btn_idle_state(yes_button, child_number)
func _on_YesBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	dismiss_sub_menu(self, SETTINGS_END_POSITION, SETTINGS_INIT_POSITION)
	get_tree().paused = false
