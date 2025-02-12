extends UI




onready var option_bar := $OptionBox
onready var next_button := $NextBTN
onready var option_1_button := $OptionBox/Option_1BTN
onready var option_2_button := $OptionBox/Option_2BTN
onready var option_1_text := $OptionBox/Option_1BTN/Option_1TXT
onready var option_2_text := $OptionBox/Option_2BTN/Option_2TXT
onready var options_tween := $Options


var yellow_text := Color(1, 1, 0)
var white_text := Color(1, 1, 1)
var child_number := 0



# Called when the node enters the scene tree for the first time.
func _ready():
#	parse_dialogue(dialogue_key)
	pass


func _on_NextBTN_mouse_entered() -> void:
	btn_hover_state(next_button, child_number)
func _on_NextBTN_mouse_exited() -> void:
	btn_idle_state(next_button, child_number)
func _on_NextBTN_pressed() -> void:
	Events.emit_signal("next_btn_pressed")
	btn_idle_state(next_button, child_number)
	next_button.visible = false



func _on_Option_1BTN_mouse_entered() -> void:
	btn_hover_state(option_1_button, child_number)
	option_1_text.modulate = yellow_text
func _on_Option_1BTN_mouse_exited() -> void:
	btn_idle_state(option_1_button, child_number)
	option_1_text.modulate = white_text
func _on_Option_1BTN_pressed() -> void:
	btn_idle_state(option_1_button, child_number)
	option_2_button.disabled = true
	option_1_text.modulate = white_text
	Events.emit_signal("option_pressed", "choice_1")
	option_bar_disappearing()

func _on_Option_2BTN_mouse_entered() -> void:
	btn_hover_state(option_2_button, child_number)
	option_2_text.modulate = yellow_text
func _on_Option_2BTN_mouse_exited() -> void:
	btn_idle_state(option_2_button, child_number)
	option_2_text.modulate = white_text
func _on_Option_2BTN_pressed() -> void:
	btn_idle_state(option_2_button, child_number)
	option_2_text.modulate = white_text
	Events.emit_signal("option_pressed", "choice_2")
	option_2_button.disabled = true
	option_bar_disappearing()



func option_bar_appearing() -> void:
	option_bar.visible = true
	options_tween.interpolate_property(option_bar, "modulate", Color(1,1,1,0), Color(1,1,1,1), 0.2,Tween.TRANS_LINEAR)
	options_tween.start()
	yield(options_tween, "tween_all_completed")
	option_1_button.disabled = false
	option_2_button.disabled = false

func option_bar_disappearing() -> void:
	options_tween.interpolate_property(option_bar, "modulate", Color(1,1,1,1), Color(1,1,1,0), 0.2,Tween.TRANS_LINEAR)
	options_tween.start()
	yield(options_tween, "tween_all_completed")
	option_bar.visible = false

