class_name resume_game_story
extends Resource


var dialogue := {
	0 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "А вот и рейнджер Фейеш. Я рад, что вы решили к нам зайти и рассказать о произошедшем лично. Надеюсь мы сможем выяснить, что же произошло у вас на задании. Готовы продолжить?",
		"next_key": 4,
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	1 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "А, рейнджер Фейеш! Рады, что вы заглянули и готовы поделиться событиями вашего задания лично. Хотим разобраться, что же с вами произошло. Продолжайте, пожалуйста.",
		"next_key": 4,
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	2 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "Здравствуйте, рейнджер Фейеш! Мы рады, что вы пришли, и надеемся, что вы расскажете нам о своем задании. Мы хотим понять, что произошло во время вашей миссии, и готовы выслушать вас.",
		"next_key": 4,
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	3 : {
		"type": "text",
		"name": "Ла Рош",
		"text": " Добрый день, рейнджер Фейеш! Рад, что вы зашли к нам и готовы рассказать о своем задании. Уверен, нам удастся выяснить подробности вашей миссии. Не терпится узнать, что же случилось! ",
		"next_key": 4,
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	4 : {
		"type": "option",
		"text_1": "Потом.",
		"text_2": "Продолжим.",
		"sound": "",
		"choice_1": 6,
		"choice_2": 5,
	},
	5 : {
		"type": "text",
		"name": "Кора",
		"text": "Да. Давайте продолжим.",
		"scene": "",
		"next_key": -1,
		"commands": 
			[
				"kora_toggle_activate_called",
				"arthur_toggle_activate_called",
				],
	},
	6 : {
		"type": "text",
		"name": "Кора",
		"text": "Нет, подождите. Мне надо подготовиться... Вспомнить детали.",
		"scene" : Globals.Scenes.MAIN_MENU,
		"next_key" : -1,
		"commands": 
			[
				"kora_toggle_activate_called",
				"arthur_toggle_activate_called",
				],
	},
}
