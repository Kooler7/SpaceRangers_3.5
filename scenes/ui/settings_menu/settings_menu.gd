extends UI

#var white_color := Color(1, 1, 1)
#var blue_color := Color(1.74, 1.9, 1.9)
var child_number := 0


onready var root = get_tree().root

onready var music_volume_bar := $MusicVolumeBar
onready var sound_volume_bar := $SoundVolumeBar
onready var resolution_bar := $ResolutionBar
onready var music_minus_button := $MusicVolumeBar/MusicMinusVolumeBTN
onready var music_plus_button := $MusicVolumeBar/MusicPlusVolumeBTN
onready var sound_minus_button := $SoundVolumeBar/SoundMinusVolumeBTN
onready var sound_plus_button := $SoundVolumeBar/SoundPlusVolumeBTN
onready var resolution_minus_button := $ResolutionBar/ResolutionMinusBTN
onready var resolution_plus_button := $ResolutionBar/ResolutionPlusBTN
onready var resolution_text := $ResolutionBar/ResolutionTXT
onready var close_button := $CloseBTN
onready var full_screen_button := $FullScreenBTN
onready var confirm_button := $ConfirmBTN
onready var tween_menu := $Tween





# Called when the node enters the scene tree for the first time.
func _ready():
	music_volume_bar.value = Settings.music_volume
	sound_volume_bar.value = Settings.sound_volume
	resolution_bar.value = Settings.screen_resolution
	resolution_text.text = "разрешение "+str(root.size.x)+"x"+str(root.size.y)
	full_screen_button.pressed = Settings.full_screen





#SoundMinusVolumeBTN Signals And Functions
func _on_SoundMinusVolumeBTN_mouse_entered() -> void:
	btn_hover_state(sound_minus_button, child_number)
func _on_SoundMinusVolumeBTN_mouse_exited() -> void:
	btn_idle_state(sound_minus_button, child_number)
func _on_SoundMinusVolumeBTN_pressed() -> void:
	Settings.decrease_sound_volume()
	MusicAndSounds.set_sfx_volume()
	MusicAndSounds.sfx_player.play()
	sound_volume_bar.value = Settings.sound_volume


func _on_SoundPlusVolumeBTN_mouse_entered() -> void:
	btn_hover_state(sound_plus_button, child_number)
func _on_SoundPlusVolumeBTN_mouse_exited() -> void:
	btn_idle_state(sound_plus_button, child_number)
func _on_SoundPlusVolumeBTN_pressed() -> void:
	Settings.increase_sound_volume()
	MusicAndSounds.set_sfx_volume()
	MusicAndSounds.sfx_player.play()
	sound_volume_bar.value = Settings.sound_volume



#MusicMinusVolumeBTN Signals And Functions
func _on_MusicMinusVolumeBTN_mouse_entered() -> void:
	btn_hover_state(music_minus_button, child_number)
func _on_MusicMinusVolumeBTN_mouse_exited() -> void:
	btn_idle_state(music_minus_button, child_number)
func _on_MusicMinusVolumeBTN_pressed() -> void:
	Settings.decrease_music_volume()
	MusicAndSounds.set_music_volume()
	MusicAndSounds.sfx_player.play()
	music_volume_bar.value = Settings.music_volume

func _on_MusicPlusVolumeBTN_mouse_entered() -> void:
	btn_hover_state(music_plus_button, child_number)
func _on_MusicPlusVolumeBTN_mouse_exited() -> void:
	btn_idle_state(music_plus_button, child_number)
func _on_MusicPlusVolumeBTN_pressed() -> void:
	Settings.increase_music_volume()
	MusicAndSounds.set_music_volume()
	MusicAndSounds.sfx_player.play()
	music_volume_bar.value = Settings.music_volume


#Resolution Signals And Functions
func _on_ResolutionMinusBTN_mouse_entered() -> void:
	btn_hover_state(resolution_minus_button, child_number)
func _on_ResolutionMinusBTN_mouse_exited() -> void:
	btn_idle_state(resolution_minus_button, child_number)
func _on_ResolutionMinusBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	Settings.decrease_screen_resolution()
	resolution_bar.value = Settings.screen_resolution
	resolution_text.text = "разрешение "+str(root.size.x)+"x"+str(root.size.y)

func _on_ResolutionPlusBTN_mouse_entered() -> void:
	btn_hover_state(resolution_plus_button, child_number)
func _on_ResolutionPlusBTN_mouse_exited() -> void:
	btn_idle_state(resolution_plus_button, child_number)
func _on_ResolutionPlusBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	Settings.increase_screen_resolution()
	resolution_bar.value = Settings.screen_resolution
	resolution_text.text = "разрешение "+str(root.size.x)+"x"+str(root.size.y)


#FullScreenBTN Signals And Functions
func _on_FullScreenBTN_mouse_entered() -> void:
	btn_hover_state(full_screen_button, child_number)
func _on_FullScreenBTN_mouse_exited() -> void:
	btn_idle_state(full_screen_button, child_number)
func _on_FullScreenBTN_toggled(button_pressed) -> void:
	Settings.toggle_fullscreen()
	MusicAndSounds.sfx_player.play()
	resolution_bar.value = Settings.screen_resolution
	resolution_text.text = "разрешение "+str(root.size.x)+"x"+str(root.size.y)


#CloseBTN Signlas And Functions
func _on_CloseBTN_mouse_entered() -> void:
	btn_hover_state(close_button, child_number)
func _on_CloseBTN_mouse_exited() -> void:
	btn_idle_state(close_button, child_number)
func _on_CloseBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	dismiss_sub_menu(self, SETTINGS_END_POSITION, SETTINGS_INIT_POSITION)
	get_tree().paused = false


#ConfirmBTN Signals And Functions
func _on_ConfirmBTN_mouse_entered() -> void:
	btn_hover_state(confirm_button, child_number)
func _on_ConfirmBTN_mouse_exited() -> void:
	btn_idle_state(confirm_button, child_number)
func _on_ConfirmBTN_pressed() -> void:
	MusicAndSounds.sfx_player.play()
	Settings.save_settings()
	dismiss_sub_menu(self, SETTINGS_END_POSITION, SETTINGS_INIT_POSITION)
	get_tree().paused = false
