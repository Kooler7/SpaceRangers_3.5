class_name Character
extends Node2D


enum Body {NEUTRAL, ANGRY, CROSS_ARMS, BOLD}

enum Character_positions {STAND, SIT}

enum Faces {
	ANGRY,
	FRIGHTNED,
	NEUTRAL,
	SAD,
	SMILING,
	SULLEN,
	SUPRISED,
	VERY_ANGRY,
	VERY_HAPPY
	}


const GREY_COLOR : = Color(0.5, 0.5, 0.5, 1)
const BLACK_COLOR := Color(0,0,0,0)
const WHITE_COLOR := Color(1,1,1,1)
const TRANSITION_SPEED := 0.5


func set_character_body(body : int, sprite : AnimatedSprite) -> void:
	match body:
		Body.CROSS_ARMS:
			sprite.play("cross_arms_pose")
		Body.NEUTRAL:
			sprite.play("neutral_pose")
		Body.BOLD:
			sprite.play("bold_pose")



func set_character_face(face : int, sprite : AnimatedSprite) -> void:
		match face:
			Faces.ANGRY:
				sprite.animation = "face_angry"
			Faces.FRIGHTNED:
				sprite.animation = "face_frightned"
			Faces.NEUTRAL:
				sprite.animation = "face_neutral"
			Faces.SAD:
				sprite.animation = "face_sad"
			Faces.SMILING:
				sprite.animation = "face_smiling"
			Faces.SULLEN:
				sprite.animation = "face_sullen"
			Faces.SUPRISED:
				sprite.animation = "face_suprised"
			Faces.VERY_ANGRY:
				sprite.animation = "face_very_angry"
			Faces.VERY_HAPPY:
				sprite.animation = "face_very_happy"


func set_character_position(character_position : int, sprite : Node2D):
	match character_position:
		Character_positions.SIT:
			pass
		Character_positions.STAND:
			pass


func toggle_activate_character(character : Character) -> void:
	match character.modulate:
		GREY_COLOR:
			character.modulate = WHITE_COLOR
		WHITE_COLOR:
			character.modulate = GREY_COLOR


func character_apearing_disapearing(character : Character, tween : Tween) -> void:
	match character.modulate:
		BLACK_COLOR:
			tween.interpolate_property(
				character, "modulate", BLACK_COLOR, WHITE_COLOR, TRANSITION_SPEED,Tween.TRANS_LINEAR)
			tween.start()
		WHITE_COLOR:
			tween.interpolate_property(
				character, "modulate",WHITE_COLOR,  BLACK_COLOR, TRANSITION_SPEED,Tween.TRANS_LINEAR)
			tween.start()


func blink_eyes(sprite : AnimatedSprite, animation : String) -> void:
	sprite.frame = 0
	sprite.animation = animation
	sprite.playing = true
	yield(sprite,"animation_finished")
	sprite.playing = false



