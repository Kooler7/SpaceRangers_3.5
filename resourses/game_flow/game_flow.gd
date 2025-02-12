class_name game_flow_class

extends Resource


var game_flow = {
	"main_menu" : {
		"scene" : Globals.Scenes.MAIN_MENU,
		"camera" : Vector2(0,0),
		"ui_configuration" : Globals.Ui_state.MAIN_MENU,
		"story_path" : "",
	},
	"intro" : {
		"scene" : Globals.Scenes.INTRO,
		"ui_configuration" : Globals.Ui_state.GAME,
		"camera" : Vector2(0,0),
		"story_path" : "res://resourses/dialogues/intro_story/intro_story.tres",
	},
	"kora's_cabin" : {
		"scene" : Globals.Scenes.LOAD,
		"ui_configuration" : Globals.Ui_state.GAME,
		"camera" : Vector2(0,0),
		"story_path" : "res://resourses/dialogues/kora's_cabin_story/kora's_cabin_story.tres",
	},
	"resume_game" : {
		"scene" : Globals.Scenes.LOAD,
		"ui_configuration" : Globals.Ui_state.GAME,
		"camera" : Vector2(-1920,-1080),
		"story_path" : "res://resourses/dialogues/interrogation_room_story/resume_game_story.tres",
	},
	"load_game" : {
		"scene" : Globals.Scenes.LOAD,
		"ui_configuration" : Globals.Ui_state.GAME,
		"camera" : Vector2(-1920,-1080),
		"story_path" : "res://resourses/dialogues/interrogation_room_story/load_game_story.tres",
	},
	"game_over" : {
		"scene" : Globals.Scenes.GAME_OVER,
		"ui_configuration" : Globals.Ui_state.GAME,
		"camera" : Vector2(0,0),
		"story_path" : "",
	},
}
