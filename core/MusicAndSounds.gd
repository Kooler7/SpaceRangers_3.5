extends Node


#enum Audio_players {SFX, MUSIC}

const SOUND_VOLUME_MULTIPLIER := 1.5

var sfx_player : AudioStreamPlayer
var speech_player : AudioStreamPlayer
var music_player : AudioStreamPlayer


func _ready():
	add_sfx_player()
	add_music_player()
	add_narrator_player()
	pause_mode = Node.PAUSE_MODE_PROCESS


func add_sfx_player() -> void:
	sfx_player = AudioStreamPlayer.new()
	sfx_player.name = "SFX"
	add_child(sfx_player)
	set_sfx_volume()


func set_sfx_volume() -> void:
	if sfx_player.is_inside_tree():
		sfx_player.volume_db = Settings.sound_volume/SOUND_VOLUME_MULTIPLIER
	else:
		return

func add_music_player() -> void:
	music_player = AudioStreamPlayer.new()
	music_player.name = "Music"
	add_child(music_player)
	set_music_volume()


func set_music_volume() -> void:
	if music_player.is_inside_tree():
		music_player.volume_db = Settings.music_volume
	else:
		return

func add_narrator_player():
	speech_player = AudioStreamPlayer.new()
	speech_player.name = "Narrator"
	speech_player.volume_db = Settings.sound_volume/SOUND_VOLUME_MULTIPLIER
	add_child(speech_player)
	set_sfx_volume()
