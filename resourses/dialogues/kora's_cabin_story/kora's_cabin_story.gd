class_name koras_cabin_story
extends Resource


var dialogue := {
	0 : {
		"type": "text",
		"name": "Кора",
		"text": "Ну да, очень воодушевляюще... Только почему-то здесь ничего не говорится про грязные игры Рейнджеров. Про тех кто забыл, с каким трудом налаживается мир и сотрудничество в Галактике.",
		"next_key": 1,
		"commands": 
			[
				"kora_toggle_fading_called",
				"peter_toggle_visibility_called"
				],
		"custom_pose": "custom_pose_called",
	},
	1 : {
		"type": "text",
		"name": "Кора",
		"text": "Про невидимую руку Корпуса, которая предала свои собственные идеалы и собирается крепко взять планеты Лиги за горло, конечно же во имя «порядка», «мира» и «прогресса» человечества.",
		"next_key": 2,
	},
	2 : {
		"type": "text",
		"name": "Кора",
		"text": "Похоже на пятый день домашнего ареста в изоляции я начала разговаривать вслух сама с собой…",
		"next_key": 3,
	},
	3 : {
		"type": "option",
		"text_1": "Ни за что!",
		"text_2": "Да, похоже на то...",
		"choice_1": 5,
		"choice_2": 4
	},
	4 : {
		"type": "text",
		"name": "Кора",
		"text": "Ну и ладно. Всегда можно заклеить самой себе рот и вставить беруши.",
		"next_key": 6,
		"commands": 
			[
				"activate_environment", 
				"peter_toggle_visibility_called"
				],
	},
	5 : {
		"type": "text",
		"name": "Кора",
		"text": "Ну и ладно. Никогда не поздно поехать крышей и начать разговаривать с воображаемыми собутыльниками, как дядя Мартин",
		"next_key": 6,
		"commands": 
			[
				"activate_environment", 
				"peter_toggle_visibility_called",
				],
	},
	6 : {
		"type": "text",
		"name": "Кора",
		"text": "Эй, мог бы и постучаться!",
		"next_key": 7,
		"face" : Character.Faces.SULLEN,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": ["peter_toggle_activate_called"],
	},
	7 : {
		"type": "text",
		"name": "Петер",
		"text": "Ты арестант. Забыла? Еще ведется служебное расследование твоих действий на первом и похоже единственном твоем задании.",
		"next_key": 8,
		"face" : Character.Faces.NEUTRAL,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],

	},
	8 : {
		"type": "text",
		"name": "Кора",
		"text": "А ты пришел, чтобы мне это напомнить? Я думала мы друзья!",
		"next_key": 9,
		"face" : Character.Faces.SULLEN,
		"body" : Character.Body.NEUTRAL,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	9 : {
		"type": "text",
		"name": "Петер",
		"text": "Я не знаю: друзья ли мы сейчас... Другой мой друг сейчас присмерти в медблоке из-за тебя! И этот чепушила с аванпоста тоже, в соседней капсуле.",
		"next_key": 10,
		"face" : Character.Faces.SULLEN,
		"body" : Character.Body.NEUTRAL,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	10 : {
		"type": "text",
		"name": "Кора",
		"text": "Знаю…Она и моя подруга тоже! И я не задумываясь поменялась бы с ней местами!",
		"next_key": 11,
		"face" : Character.Faces.SAD,
		"body" : Character.Body.NEUTRAL,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	11 : {
		"type": "text",
		"name": "Петер",
		"text": "Кора, да что с тобой не так?! Ты должна была защищать людей, а не устраивать катаклизмы, планетарного масштаба!",
		"next_key": 12,
		"face" : Character.Faces.ANGRY,
		"body" : Character.Body.NEUTRAL,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	12 : {
		"type": "text",
		"name": "Кора",
		"text": "Хватит! Я устала от обвинений! Еще не известно как бы ты поступил на моем месте! Разжалуйте уже меня, и закончим этот разговор рейнджер Кинг!",
		"next_key": 13,
		"custom_pose": "custom_pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	13 : {
		"type": "text",
		"name": "Петер",
		"text": "Скорее всего тебя разжалуют. Если бы решал я, то так бы и сделал прямо сейчас. Но твое дело ведет лично глава отдела прогнозирования и решения внутренних угроз Артур Ла Рош.",
		"next_key": 14,
		"face" : Character.Faces.NEUTRAL,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	14 : {
		"type": "text",
		"name": "Петер",
		"text": "И он решил соблюсти все формальности и приглашает тебя дать показания лично под запись. Поэтому я и пришел за тобой.",
		"next_key": 15,
	},
	15 : {
		"type": "text",
		"name": "Кора",
		"text": "Ха! Допрос?! Я уже написала подробный рапорт о случившемся. Зачем ему меня допрашивать?",
		"next_key": 16,
		"face" : Character.Faces.ANGRY,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	16 : {
		"type": "text",
		"name": "Петер",
		"text": "Во-первых, дело громкое. Рейнджеры облажались так, что пришлось эвакуировать население целого континента. Прямо сейчас журналисты рвут коммандующего Корпуса на части. ",
		"next_key": 17,
		"face" : Character.Faces.NEUTRAL,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	17 : {
		"type": "text",
		"name": "Петер",
		"text": "А то, что от него останется будут разделывать уже в Конгрессе Лиги. Так что нужно провести все следственные действия в строжайшем порядке.",
		"next_key": 18,
	},
	18 : {
		"type": "text",
		"name": "Кора",
		"text": "И вы решили сделать меня козлом отпущения?",
		"next_key": 19,
		"face" : Character.Faces.SULLEN,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	19 : {
		"type": "text",
		"name": "Петер",
		"text": "Нет. «Козлом отпущения», как ты изволила выразиться, будет твой куратор, который должен был остановить операцию, когда ты слетела с катушек. ",
		"next_key": 20,
		"face" : Character.Faces.SULLEN,
		"body" : Character.Body.NEUTRAL,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	20 : {
		"type": "text",
		"name": "Петер",
		"text": "Однако он настаивает на том, что по какой-то причине сверх надежная квантовая связь, которая не может отказать в нашей Вселенной, отказала.",
		"next_key": 21,
	},
	21 : {
		"type": "text",
		"name": "Кора",
		"text": "Да чтоб тебя два раза подняло и один раз опустило! Я не слетела с катушек! Я сделала то, что должна была сделать! А связь действительно отказала!",
		"next_key": 22,
		"face" : Character.Faces.VERY_ANGRY,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	22 : {
		"type": "text",
		"name": "Петер",
		"text": "Вот об этом моему начальнику и расскажешь. А во-вторых, Ла Рош решил уточнить некоторые моменты из твоего рапорта.",
		"next_key": 23,
		"face" : Character.Faces.NEUTRAL,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	23 : {
		"type": "text",
		"name": "Кора",
		"text": "А если я откажусь?",
		"next_key": 24,
		"face" : Character.Faces.NEUTRAL,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	24 : {
		"type": "text",
		"name": "Петер",
		"text": "Тебя никто не может заставить. Но может, хоть сейчас ты будешь думать не только о себе.",
		"next_key": 25,
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	25 : {
		"type": "text",
		"name": "Петер",
		"text": "Тебя-то разжалуют в любом случае, но ты можешь помочь твоему куратору. Вот только Фае ты уже не поможешь.",
		"next_key": 26,
	},
	26 : {
		"type": "option",
		"text_1": "Хорошо!",
		"text_2": "Ну нет уж!",
		"sound": "",
		"choice_1": 28,
		"choice_2": 27
	},
	27 : {
		"type": "text",
		"name": "Кора",
		"text": "Ну нет уж! Хватит с меня! Если Корпусу плевать на меня, то мне плевать на Корпус! Можете меня разжаловать прямо сейчас!",
		"scene": Globals.Scenes.GAME_OVER,
		"next_key": -1,
		"face" : Character.Faces.VERY_ANGRY,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	28 : {
		"type": "text",
		"name": "Кора",
		"text": "Хорошо! Я готова. А ты готов?",
		"next_key": 29,
		"face" : Character.Faces.NEUTRAL,
		"body" : Character.Body.CROSS_ARMS,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	29 : {
		"type": "text",
		"name": "Петер",
		"text": "К чему?",
		"next_key": 30,
		"face" : Character.Faces.NEUTRAL,
		"body" : Character.Body.NEUTRAL,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	},
	30 : {
		"type": "text",
		"name": "Кора",
		"text": "К тому, что услышишь, к тому, что свалишься со своего морального Олимпа и будешь греметь костями так громко, что заглушишь брачный рык свинобраза. Пошли.",
		"panel": Globals.Panels.PANEL_2,
		"next_key": -1,
		"face" : Character.Faces.SULLEN,
		"body" : Character.Body.NEUTRAL,
		"position": Character.Character_positions.STAND,
		"pose": "pose_called",
		"commands": 
			[
				"peter_toggle_activate_called",
				"kora_toggle_activate_called",
				],
	}
}
