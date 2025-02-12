extends Node2D

const MIN_BGMUSIC_VOLUME = Settings.MIN_MUSIC_VOLUME
const BLACK_COLOR = Color(0,0,0,1)
const WHITE_COLOR = Color(0,0,0,0)
const TRANSITION_SPEED = 0.5

#enum Game_modes {DIALOGUES, FIELD}
#var next_mode = Game_modes.DIALOGUES

enum Panels {PANEL_1, PANEL_2, PANEL_3}
var next_panel = Panels.PANEL_1


enum Scenes {
	MAIN_MENU,
	INTRO,
	LOAD,
	SPACE_STATION,
	RANGER_OUTPOST,
	GAME_OVER,
	}
var next_scene = Scenes.MAIN_MENU


var location_to_scene := {
	Globals.Scenes.MAIN_MENU: load("res://scenes/start_menu/start_menu.tscn"),
	Globals.Scenes.INTRO: load("res://scenes/intro/intro/intro.tscn"),
	Globals.Scenes.LOAD: load("res://scenes/load/load.tscn"),
	Globals.Scenes.SPACE_STATION : load("res://scenes/space_station/space_station.tscn"),
	Globals.Scenes.GAME_OVER: load("res://scenes/game_over/game_over.tscn"),
}



onready var background_music := MusicAndSounds.music_player
onready var fade_in := $FadeIn
onready var fade_out := $FadeOut
onready var cover := $SceneViewer/CoverCanvas/Cover
onready var scene_viewer := $SceneViewer
onready var background_music_volume := MusicAndSounds.music_player.volume_db



func _ready():
	enter_scene(Globals.next_scene)
	Events.connect("change_scene_called", self, "set_next_scene")
	buttons_sound()



func set_next_scene() -> void:
#	if scene_viewer.get_child(0).get_path() = 
	check_scene()



func check_scene() -> void:
	match Globals.next_scene:
		Globals.Scenes.MAIN_MENU:
			exit_scene(Globals.Scenes.MAIN_MENU)
		Globals.Scenes.INTRO:
			exit_scene(Globals.Scenes.INTRO)
		Globals.Scenes.LOAD:
			exit_scene(Globals.Scenes.LOAD)
		Globals.Scenes.SPACE_STATION:
			exit_scene(Globals.Scenes.SPACE_STATION)
		Globals.Scenes.GAME_OVER:
			exit_scene(Globals.Scenes.GAME_OVER)



func exit_scene(scene) -> void:
	fading_out()
	MusicAndSounds.speech_player.stop()
	yield(fade_out, "tween_all_completed")
	scene_viewer.get_child(0).queue_free()
	enter_scene(scene)



func enter_scene(scene) -> void:
	var level = location_to_scene.get(scene).instance()
	scene_viewer.add_child(level)
	scene_viewer.move_child(level, 0)
	fading_in()



#Change Scenes
func fading_out():
	fade_out.interpolate_property(background_music, "volume_db", background_music_volume, MIN_BGMUSIC_VOLUME, TRANSITION_SPEED, Tween.TRANS_LINEAR)
	fade_out.interpolate_property(cover, "modulate", WHITE_COLOR, BLACK_COLOR, TRANSITION_SPEED, Tween.TRANS_LINEAR)
	fade_out.start()


func fading_in():
	fade_in.interpolate_property(background_music, "volume_db", MIN_BGMUSIC_VOLUME, background_music_volume, TRANSITION_SPEED, Tween.TRANS_LINEAR)
	fade_in.interpolate_property(cover, "modulate", BLACK_COLOR, WHITE_COLOR, TRANSITION_SPEED, Tween.TRANS_LINEAR)
	fade_in.start()


func buttons_sound():
	MusicAndSounds.sfx_player.stream = load("res://assets/audio/sfx/ButtonHover.ogg")



