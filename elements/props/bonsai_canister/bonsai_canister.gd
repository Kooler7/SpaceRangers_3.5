extends Node2D


onready var bonsai_canister := $AnimatedSprite
onready var change_anim_pause := $Timer


func _ready():
	change_anim()


func start_timeout():
	change_anim_pause.start()
	yield(change_anim_pause, "timeout")
	change_anim()

func change_anim():
	bonsai_canister.play("animation_"+str(randi() % 3 + 1))
	start_timeout()

