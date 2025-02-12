extends Node2D

onready var layer_1 := $Layer1
onready var layer_2 := $Layer2
onready var layer_3 := $Layer3





func _ready():
#	unpause_game()
#	Globals.current_ui_state = Globals.Ui_state.MAIN_MENU
	Events.emit_signal("scene_ready")
	scene_bg_music()
	pass

func _process(delta):
	var tempposition_1 = get_global_mouse_position() + layer_1.position
	layer_1.position = tempposition_1/40
	var tempposition_2 = get_global_mouse_position() + layer_2.position
	layer_2.position = tempposition_2/20
	var tempposition_3 = get_global_mouse_position() + layer_3.position
	layer_3.position = tempposition_3/10

#func unpause_game():
#	if get_tree().paused:
#		get_tree().paused = false
#	else:
#		return

func scene_bg_music() -> void:
	MusicAndSounds.music_player.stream = load("res://assets/audio/music/MainMenuMusic.ogg")
	MusicAndSounds.music_player.volume_db = -80
	MusicAndSounds.music_player.play()
