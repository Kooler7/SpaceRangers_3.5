extends StoryScene


const POSITION_COORDINATES := [[0, 0], [-1920, -1080]]

onready var camera := $Camera2D

export var text_path : Resource
var dialogue : Dictionary

func _ready():
	Events.connect("option_pressed", self, "set_choice")
	Events.connect("next_btn_pressed", self, "on_next_button_pressed")
	call_deferred("check_panel", Globals.next_panel)
	Events.connect("change_scene_called", self, "set_camera_position")
	Events.emit_signal("scene_ready")
	set_dialogue_ui()
	set_story_text()


func set_story_text():
	text_path = load(Globals.current_story_path)
	dialogue = text_path.dialogue


func set_dialogue_ui():
	dialogue_menu = $DialogueMenu
	text_bar = $DialogueMenu/DialogueBar/DialogueTXT
	typewriter = $Tween
	name_bar = $DialogueMenu/NameBar/NameTXT
	option_1_text = $DialogueMenu/OptionBox/Option_1BTN/Option_1TXT
	option_2_text = $DialogueMenu/OptionBox/Option_2BTN/Option_2TXT


func set_camera_position():
	camera.position = Globals.current_camera_position

func check_panel(panel) -> void:
	if Globals.next_panel != panel:
		Globals.next_panel = panel
	match Globals.next_panel:
		Globals.Panels.PANEL_1:
			camera.position.x = POSITION_COORDINATES[0][0]
			camera.position.y = POSITION_COORDINATES[0][1]
			set_dialogue(dialogue)

		Globals.Panels.PANEL_2:
			camera.position.x = POSITION_COORDINATES[1][0]
			camera.position.y = POSITION_COORDINATES[1][1]
			if Globals.is_game_started == false:
				set_dialogue(dialogue)
			elif Globals.is_game_started == true:
				set_dialogue(dialogue)

