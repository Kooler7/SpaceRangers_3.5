class_name load_game_story
extends Resource


var dialogue := {
	0 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "А вот и рейнджер Фейеш. Я рад, что вы решили к нам зайти и рассказать о произошедшем лично.",
		"next_key": 1,
		"kora_sprite": {
			"body": "sit_2",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	1 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "Надеюсь мы сможем выяснить, что же произошло у вас на задании.",
		"next_key": 2,
		"kora_sprite": {
			"body": "sit_2",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	2 : {
		"type": "text",
		"name": "Кора",
		"text": "Ха! Можно подумать у меня был выбор. Все знают, что безопасники могут испортить жизнь кому угодно.",
		"next_key": 3,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	3 : {
		"type": "text",
		"name": "Петер",
		"text": "Ну, конечно. Мы плохие, а только Кора в белом! Ни чего нового...",
		"next_key": 4,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "angry_face",
			"pose": "angry_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	4 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "Вы напрасно видите во мне врага. Я - единственное, что отделяет вас от увольнения с позором. ",
		"next_key": 5,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "neutral_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "neutral_pose"
		},
	},
	5 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "И очень заинтересован в том, что бы разобраться в данной ситуации. Не забывайте, что случившееся бросает тень не только на вас, но и на всю деятельность Корпуса.",
		"next_key": 6,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "neutral_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "neutral_pose"
		},
	},
	6 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "А если вы поможете мне и Корпусу, я буду весьма признателен.",
		"next_key": 7,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "neutral_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "neutral_pose"
		},
	},
	7 : {
		"type": "text",
		"name": "Кора",
		"text": "Ого! Злой коп и добрый коп. Слишком банально даже для деревенщины, которой вы меня считаете. Меня так просто не взять.",
		"next_key": 8,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	8 : {
		"type": "text",
		"name": "Петер",
		"text": "Пфф... Можно подумать...",
		"next_key": 9,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
	},
	9 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "Боюсь, что вы меня превратно поняли, Кора. Злой коп здесь я... ",
		"next_key": 10,
		"kora_sprite": {
			"body": "sit_2",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	10 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "Если вы не настроены нам помочь, то я заканчиваю разговор. Так что вы решите? Будете сотрудничать?",
		"next_key": 11,
		"kora_sprite": {
			"body": "sit_2",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	11 : {
		"type": "option",
		"text_1": "Да.",
		"text_2": "Нет!",
		"sound": "",
		"choice_1": 13,
		"choice_2": 12
	},
	12 : {
		"type": "text",
		"name": "Кора",
		"text": "Знаете что?! Раз Корпусу и вам настолько плевать на меня, что вы готовы бросить меня на съедение шакалам, то и мне плевать на вас и на Корпус! Разбирайтесь как хотите!",
		"scene" : Globals.Scenes.GAME_OVER,
		"next_key": -1,
		"kora_sprite": {
			"body": "sit_2",
			"face": "neutral_face",
			"pose": "very_angry_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
	},
	13 : {
		"type": "text",
		"name": "Кора",
		"text": "Да! Мне, черт возьми, есть что сказать вам лично, руководству и Корпусу в целом!",
		"next_key": 14,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "cross_arms_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
	},
	14 : {
		"type": "text",
		"name": "Ла Рош",
		"text": "Хорошо. Я вас внимательно слушаю. Если вас не затруднит, то начните, пожалуйста, с того дня, который предшествовал вашему назначению на задание.",
		"next_key": 15,
		"kora_sprite": {
			"body": "sit_2",
			"face": "sullen_face",
			"pose": "neutral_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "writing_pose"
		},
	},
	15 : {
		"type": "text",
		"name": "Кора",
		"text": "Ну, если это так важно, слушайте...",
		"scene" : Globals.Scenes.SPACE_STATION,
		"next_key": -1,
		"kora_sprite": {
			"body": "sit_2",
			"face": "neutral_face",
			"pose": "neutral_pose"
		},
		"peter_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "cross_arms_pose"
		},
		"larosh_sprite": {
			"body": "sit",
			"face": "neutral_face",
			"pose": "writing_pose"
		},
	}
}
