extends UI



onready var tween_menu := $Tween
onready var settings_button := $SettingsSmallBTN
onready var home_button := $HomeBTN
onready var settings_menu : CanvasLayer = get_parent().get_child(2)
onready var home_menu : CanvasLayer = get_parent().get_child(5)

var child_number := 0



func _on_SettingsSmallBTN_mouse_entered() -> void:
	btn_hover_state(settings_button, child_number)
func _on_SettingsSmallBTN_mouse_exited() -> void:
	btn_idle_state(settings_button, child_number)
func _on_SettingsSmallBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	call_sub_menu(settings_menu, SETTINGS_INIT_POSITION, SETTINGS_END_POSITION)
	get_tree().paused = true




func _on_HomeBTN_mouse_entered() -> void:
	btn_hover_state(home_button, child_number)
func _on_HomeBTN_mouse_exited() -> void:
	btn_idle_state(home_button, child_number)
func _on_HomeBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	call_sub_menu(home_menu, EXIT_INIT_POSITION, EXIT_END_POSITION)
	get_tree().paused = true














