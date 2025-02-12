extends Character


#enum Custom_poses {SIT_1, EXTREME_ANGRY}

#var sprites_names := ["CustomPoses", "Body", "Face"]
onready var fade_out := $FadeOut
onready var sprites_list := $Sprites
onready var custom_poses := $Sprites/CustomPoses
onready var body_sprite := $Sprites/Body
onready var face_sprite := $Sprites/Face
onready var blink_timer := $Blink
onready var eyes := $Sprites/Eyes

var sit_1_eyes_anim := "sit_1_blink"
var stand_eyes_anim := "neutral_blink"
var current_eyes_anim := ""

func _ready():
	self.modulate = BLACK_COLOR
	Events.connect(
		"kora_toggle_fading_called", 
		self, "character_apearing_disapearing", [self, fade_out])
	Events.connect("kora_toggle_activate_called", self, "toggle_activate_character", [self])
	Events.connect("custom_pose_called", self, "custom_pose")
	Events.connect("pose_called",self, "set_pose")
	pass





#Set_general_poses
func set_pose( body :int, face : int, char_name : String):
	if char_name == "Кора":
		blink_timer.stop()
		var temp = sprites_list.get_children()
		for i in temp:
			i.visible = false
		body_sprite.visible = true
		face_sprite.visible = true
		set_character_body(body, body_sprite)
		set_character_face(face, face_sprite)
		if face == Faces.NEUTRAL:
			current_eyes_anim = "stand_blink"
			eyes.play("stand_blink")
			start_timer()
	else:
		return



#Set_custom_poses
func custom_pose(name, key):
	if name == "Кора":
		match key:
			0 : kora_sit_1()
			12 : kora_extreme_angry()
	else:
		return

func kora_sit_1():
	blink_timer.stop()
	var temp = sprites_list.get_children()
	for i in temp:
		i.visible = false
	custom_poses.visible = true
	custom_poses.play("sit_1")
	current_eyes_anim = "sit_1_blink"
	start_timer()




func kora_extreme_angry():
	blink_timer.stop()
	var temp = sprites_list.get_children()
	for i in temp:
		i.visible = false
	custom_poses.visible = true
	custom_poses.play("extreme_angry")


func start_timer():
	blink_timer.start()
	yield(blink_timer, "timeout")
	eyes_control()

func eyes_control():
	eyes.visible = true
	var temp = randi() % 2
	if temp == 0:
		blink_eyes(eyes, current_eyes_anim)
	start_timer()
