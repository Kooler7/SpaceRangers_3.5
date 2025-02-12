extends Character


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var fade_out := $FadeOut
onready var blink_timer := $Blink
onready var sprites_list := $Sprites
onready var body_sprite := $Sprites/Body
onready var face_sprite := $Sprites/Face

# Called when the node enters the scene tree for the first time.
func _ready():

	Events.connect(
		"peter_toggle_fading_called", 
		self, "character_apearing_disapearing", [self, fade_out])
	Events.connect("peter_toggle_visibility_called", self, "toggle_visibility")
	Events.connect("peter_toggle_activate_called", self, "toggle_activate_character", [self])
	Events.connect("pose_called",self, "set_pose")
	pass



#Set_general_poses
func set_pose( body :int, face : int, char_name : String):
	if char_name == "Петер":
		blink_timer.stop()
		var temp = sprites_list.get_children()
		for i in temp:
			i.visible = false
		body_sprite.visible = true
		face_sprite.visible = true
		set_character_body(body, body_sprite)
		set_character_face(face, face_sprite)
#		if face == Faces.NEUTRAL:
#			eyes.visible = true
#			start_timeout("neutral_blink")
#	else:
#		return


func toggle_visibility():
	if self.visible == true:
		self.visible = false
	elif self.visible == false:
		self.modulate = BLACK_COLOR
		self.visible = true
		character_apearing_disapearing(self, fade_out)
		
