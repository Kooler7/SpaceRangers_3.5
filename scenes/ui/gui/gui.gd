extends CanvasLayer

onready var main_menu := $MainMenu
onready var game_menu := $GameMenu
onready var about_menu := $AboutMenu
onready var exit_menu := $ExitMenu
onready var home_menu := $HomeMenu


func _ready():
	Events.connect("scene_ready", self, "set_ui_config")



func set_ui_config() -> void:
	match Globals.current_ui_state:
		Globals.Ui_state.MAIN_MENU:
			main_menu.visible = true
			game_menu.visible = false
			about_menu.visible = true
			exit_menu.visible = true
			home_menu.visible = false
			main_menu.check_game_started()
		Globals.Ui_state.GAME:
			main_menu.visible = false
			game_menu.visible = true
			about_menu.visible = false
			exit_menu.visible = false
			home_menu.visible = true
		Globals.Ui_state.DIALOGUE:
			main_menu.visible = false
			game_menu.visible = true
			about_menu.visible = false
			exit_menu.visible = false
			home_menu.visible = true









