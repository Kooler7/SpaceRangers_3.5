extends Node2D

const KEY_TO_END = -1

onready var typewriter := $Typewriter
onready var prologue_text := $PrologueTXT

export var text_path : Resource

var intro_text : Dictionary
var text_start: float = 0
var text_end: float = 1
var dialogue_key = 0
var end_scene := false
var narrator_speeches := {
	0 : "res://assets/audio/speech/IntroLine_1.ogg",
	1 : "res://assets/audio/speech/IntroLine_2.ogg",
	2 : "res://assets/audio/speech/IntroLine_3.ogg",
	3 : "res://assets/audio/speech/IntroLine_4.ogg",
}


func _ready():
	Events.emit_signal("scene_ready")
	set_story_text()
	parse_dialogue(dialogue_key)
	pass


func set_story_text():
	text_path = load(Globals.current_story_path)
	intro_text = text_path.dialogue



func narrator(sound: int) -> void:
	MusicAndSounds.speech_player.stream = load(narrator_speeches[sound])
	MusicAndSounds.speech_player.play()

func display_text(text : String) -> void:
	prologue_text.percent_visible = text_start
	prologue_text.text = text
	typewriter.interpolate_property(prologue_text, "percent_visible", text_start, text_end, 5.0,Tween.TRANS_LINEAR)
	typewriter.start()

func parse_dialogue(key : int) -> void:
	display_text(intro_text[key].text)
	dialogue_key = intro_text[key].next_key
	narrator(intro_text[key].sound)


func _input(event):
	if Input.is_action_just_pressed("skip"):
		if end_scene == false:
			if prologue_text.percent_visible != text_end:
				typewriter.stop_all()
				prologue_text.percent_visible = text_end
			elif prologue_text.percent_visible == text_end and dialogue_key != KEY_TO_END:
				parse_dialogue(dialogue_key)
			elif prologue_text.percent_visible == text_end and dialogue_key == KEY_TO_END:
				end_scene = true
				Globals.set_current_flow("kora's_cabin")
				Events.emit_signal("change_scene_called")
	



#var intro_text := {
#	0 : {
#		"type": "line",
#		"text": "Больше тысячи лет назад случился \"Раскол\"... Катаклизм неясной природы, после которого человечество оказалось рассеянным по планетам Галактики, изолированным и разобщенным. Не осталось достоверных данных о том, каким было человечество до Раскола, о причинах катаклизма и как он происходил. Остались только мифы о золотом веке людей, называемом Полуднем, и мифов о якобы единой родине людей - планете под названием Грязь.",
#		"sound": 0,
#		"next_key": 1
#	},
#	1 : {
#		"type": "line",
#		"text": "На долгие семьсот лет Галактика, и люди в ней погрузились в хаос и тьму. Но 273 года назад несколько планет образовали Лигу, союз планет в основе которого лежат принципы свободы, равенства, мира и прогресса. Заново открытые планеты принимаются в этот союз, если сами жители  планет этого желают и если общество на этих планетах не утратило технологии космических перелетов.",
#		"sound": 1,
#		"next_key": 2
#	},
#	2 : {
#		"type": "line",
#		"text": "С планетами, которые не захотели вступить в Лигу и с планетами, которые сильно деградировали поддерживаются экономические и культурные контакты через аванпосты в надежде, что рано или поздно они присоединятся к остальному человечеству. Спустя тысячу лет изоляции и упадка новое объединение планет под названием Галактическая Лига Человечества или просто Лига пытается вновь сделать жизнь в Галактике безопасной и комфортной для созидания.",
#		"sound": 2,
#		"next_key": 3
#	},
#	3 : {
#		"type": "line",
#		"text": "Для этих целей был создан Корпус Рейнджеров. Это организация, состоящая из мужчин и женщин со всех планет союза, которые самоотверженно служат делу развития человечества, исследованию новых горизонтов, поддержания законности, порядка и правосудия для всех жителей Галактики. Их ежедневная тяжелая работа отражена в девизе: \"В глубинах космоса бесстрашные Рейнджеры на страже мира и порядка!\"",
#		"sound": 3,
#		"next_key": -1
#	}
#
#}
