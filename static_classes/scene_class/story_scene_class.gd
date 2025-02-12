class_name StoryScene
extends Node2D


enum Next_button_signals {
	CHANGE_SCENE,
	CHANGE_PANEL,
	CHANGE_GAME_MODE,
	CHANGE_TEXT,
}
var next_btn_signal = Next_button_signals.CHANGE_TEXT

const KEY_TO_END := -1
const CHILD_NUMBER := 0
const TEXT_START := 0.0
const TEXT_END := 1.0
const WRITER_SPEED := 0.05

var current_dialogue : Dictionary
var dialogue_key := 0
var dialogue_menu : Object
var text_bar : Object
var typewriter : Object
var name_bar : Object
var option_1_text : Object
var option_2_text : Object
var next_button : Object


func on_next_button_pressed():
	match next_btn_signal:
		Next_button_signals.CHANGE_GAME_MODE:
			pass
		Next_button_signals.CHANGE_SCENE:
			Globals.set_current_flow("game_over")
			Events.emit_signal("change_scene_called")
		Next_button_signals.CHANGE_TEXT:
			parse_dialogue(dialogue_key)


#func set_dialogue():
#	current_dialogue = load(Globals.current_game_node.story_path)
#	var temp = current_dialogue.instance()
#	parse_dialogue(dialogue_key, temp)
	

func set_dialogue(dialogue):
	dialogue_menu.next_button.visible = false
	current_dialogue = dialogue
	dialogue_key = 0
	if current_dialogue != null:
		parse_dialogue(dialogue_key)






func set_choice(choice : String):
	dialogue_key = current_dialogue[dialogue_key][choice]
	parse_dialogue(dialogue_key)


func _unhandled_input(event):
	if Input.is_action_just_pressed("skip"):
		if dialogue_menu.next_button.visible == false and dialogue_menu.option_bar.visible == false:
			if text_bar.percent_visible != TEXT_END:
				typewriter.seek(INF)
				text_bar.percent_visible = TEXT_END
				if dialogue_key != KEY_TO_END:
					next_btn_signal = Next_button_signals.CHANGE_TEXT
				dialogue_menu.next_button.visible = true


func display_text(text : String, character : String) -> void:
	var speed = WRITER_SPEED * text.length()
	name_bar.text = character
	text_bar.percent_visible = TEXT_START
	text_bar.text = text
	typewriter.interpolate_property(
		text_bar, "percent_visible", TEXT_START, TEXT_END, speed,Tween.TRANS_LINEAR
		)
	typewriter.start()
	yield(typewriter, "tween_all_completed")
	if dialogue_key != KEY_TO_END:
		next_btn_signal = Next_button_signals.CHANGE_TEXT
	dialogue_menu.next_button.visible = true


func display_choice(option_1 : String, option_2 : String) -> void:
	option_1_text.text = option_1
	option_2_text.text = option_2
	dialogue_menu.option_bar_appearing()



#func parse_dialogue(key : String, story : Object) -> void:
#	var line = story.get_node(key)
#	display_text(line.dialogue_text, line.name_text)






func parse_dialogue(key : int) -> void:
	if current_dialogue[key].type == "text":
		for i in current_dialogue[key]:
			match i:
				"text":
					display_text(
						current_dialogue[key].text, 
						current_dialogue[key].name)
				"scene":
					Globals.next_scene = current_dialogue[key]["scene"]
					next_btn_signal = Next_button_signals.CHANGE_SCENE
				"panel":
					Globals.next_panel = current_dialogue[key]["panel"]
					next_btn_signal = Next_button_signals.CHANGE_PANEL
				"next_key":
					dialogue_key = current_dialogue[key].next_key
				"commands":
					var commands = current_dialogue[key][i]
					for c in commands:
						Events.emit_signal(c)
				"custom_pose":
					Events.emit_signal(
						current_dialogue[key][i],
						current_dialogue[key].name,
						key)
				"pose":
					Events.emit_signal(
						current_dialogue[key][i], 
						current_dialogue[key].body, 
						current_dialogue[key].face,
						current_dialogue[key].name)

	elif current_dialogue[key].type == "option":
		display_choice(current_dialogue[key].text_1, current_dialogue[key].text_2)

#func test_signal():
#	print("VISIBILITY_CALLED")
