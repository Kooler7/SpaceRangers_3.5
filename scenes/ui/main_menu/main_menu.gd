extends UI


onready var resume_button := $MarginContainer/VBoxContainer/Resume
onready var start_button := $MarginContainer/VBoxContainer/Start
onready var load_button := $MarginContainer/VBoxContainer/Load
onready var settings_button := $MarginContainer/VBoxContainer/Settings
onready var about_button := $MarginContainer/VBoxContainer/About
onready var exit_button := $MarginContainer/VBoxContainer/Exit


var child_number : int = 0
onready var settings_menu : CanvasLayer = get_parent().get_child(2)
onready var about_menu : CanvasLayer = get_parent().get_child(3)
onready var exit_menu : CanvasLayer = get_parent().get_child(4)



func _ready():
	check_game_started()

func check_game_started() -> void:
	if Globals.is_game_started == false:
		resume_button.disabled = true
		load_button.disabled = true


func _on_Resume_mouse_entered() -> void:
	btn_hover_state(resume_button, child_number)
func _on_Resume_mouse_exited() -> void:
	btn_idle_state(resume_button, child_number)
func _on_Resume_pressed() -> void:
	btn_idle_state(resume_button, child_number)
	MusicAndSounds.sfx_player.play()
	Events.emit_signal("change_scene_called", Globals.Scenes.LOAD)
	Events.emit_signal("change_panel_called", Globals.Panels.PANEL_2)



func _on_Start_mouse_entered() -> void:
	btn_hover_state(start_button, child_number)


func _on_Start_mouse_exited() -> void:
	btn_idle_state(start_button, child_number)


func _on_Start_pressed() -> void:
	btn_idle_state(start_button, child_number)
	MusicAndSounds.sfx_player.play()
	Globals.set_current_flow("intro")
	Events.emit_signal("change_scene_called")



func _on_Load_mouse_entered() -> void:
	btn_hover_state(load_button, child_number)


func _on_Load_mouse_exited() -> void:
	btn_idle_state(load_button, child_number)


func _on_Load_pressed() -> void:
	btn_idle_state(load_button, child_number)
	MusicAndSounds.sfx_player.play()
	Events.emit_signal("change_scene_called", Globals.Scenes.LOAD)
	Events.emit_signal("change_panel_called", Globals.Panels.PANEL_2)



func _on_Settings_mouse_entered() -> void:
	btn_hover_state(settings_button, child_number)


func _on_Settings_mouse_exited() -> void:
	btn_idle_state(settings_button, child_number)


func _on_Settings_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	call_sub_menu(settings_menu, SETTINGS_INIT_POSITION, SETTINGS_END_POSITION)
	get_tree().paused = true



func _on_About_mouse_entered() -> void:
	btn_hover_state(about_button, child_number)


func _on_About_mouse_exited() -> void:
	btn_idle_state(about_button, child_number)


func _on_About_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	call_sub_menu(about_menu, SETTINGS_INIT_POSITION, SETTINGS_END_POSITION)
	get_tree().paused = true



func _on_Exit_mouse_entered() -> void:
	btn_hover_state(exit_button, child_number)


func _on_Exit_mouse_exited() -> void:
	btn_idle_state(exit_button, child_number)


func _on_Exit_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	call_sub_menu(exit_menu, EXIT_INIT_POSITION, EXIT_END_POSITION)
	get_tree().paused = true






























