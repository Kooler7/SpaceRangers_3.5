extends Node

onready var save_game_file = "user://save_game.save"
var is_game_started := false

enum Game_states {GAME_STARTED, GAME_NOT_STARTED}
var current_game_state = Game_states.GAME_NOT_STARTED

enum Ui_state {MAIN_MENU, DIALOGUE, GAME}
var current_ui_state = Ui_state.MAIN_MENU


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


enum Game_modes {DIALOGUE, FIELD,}
var game_mode = Game_modes.DIALOGUE

var current_story_path : String
var current_camera_position : Vector2
onready var current_game_flow := load("res://resourses/game_flow/game_flow.tres")


#var game_flow = {
#	"main_menu" : {
#		"scene" : Scenes.MAIN_MENU,
#		"camera" : Vector2(0,0),
#		"ui_configuration" : Ui_state.MAIN_MENU,
#		"story_path" : "",
#	},
#	"intro" : {
#		"scene" : Scenes.INTRO,
#		"ui_configuration" : Ui_state.GAME,
#		"camera" : Vector2(0,0),
#		"story_path" : "res://resourses/dialogues/intro_story/intro_story.tres",
#	},
#	"kora's_cabin" : {
#		"scene" : Scenes.LOAD,
#		"ui_configuration" : Ui_state.GAME,
#		"camera" : Vector2(0,0),
#		"story_path" : "res://resourses/dialogues/kora's_cabin_story/kora's_cabin_story.tres",
#	},
#	"resume_game" : {
#		"scene" : Scenes.LOAD,
#		"ui_configuration" : Ui_state.GAME,
#		"camera" : Vector2(-1920,-1080),
#		"story_path" : "res://resourses/dialogues/kora's_cabin_story/kora's_cabin_story.tres",
#	},
#	"game_over" : {
#		"scene" : Scenes.GAME_OVER,
#		"ui_configuration" : Ui_state.GAME,
#		"camera" : Vector2(0,0),
#		"story_path" : "",
#	},
#}


func set_current_flow(key : String):
	current_ui_state = current_game_flow.game_flow[key]["ui_configuration"]
	next_scene = current_game_flow.game_flow[key]["scene"]
	current_story_path = current_game_flow.game_flow[key]["story_path"]
	current_camera_position = current_game_flow.game_flow[key]["camera"]



func load_save_game():
	var f = File.new()
	if f.file_exists(save_game_file):
		f.open(save_game_file,File.READ)
		is_game_started = f.get_var()
		f.close()



func save_save_game():
	var f = File.new()
	if f.file_exists(save_game_file):
		f.open(save_game_file, File.READ)
		f.store_var(is_game_started)
		f.close()

