class_name UI
extends CanvasLayer

var is_submenu_called := false


const SETTINGS_INIT_POSITION := Vector2(2000, 100)
const SETTINGS_END_POSITION := Vector2(600, 100)
const EXIT_INIT_POSITION := Vector2(2000, 350)
const EXIT_END_POSITION := Vector2(800, 350)
const WHITE_COLOR := Color(1, 1, 1)
const BLUE_COLOR := Color(1.74, 1.9, 1.9)
const SUB_MENU_SPEED := 0.3






func btn_hover_state(button: BaseButton, child: int) -> void:
	if button.disabled == false:
		if (button.get_child(child).visible == false):
			button.get_child(child).visible = true
			button.modulate = BLUE_COLOR
			button.rect_scale = Vector2(1.1, 1.1)
			MusicAndSounds.sfx_player.play()






func btn_idle_state(button: BaseButton, child: int) -> void:
	if button.disabled == false:
		if (button.get_child(child).visible == true):
			button.get_child(child).visible = false
			button.modulate = WHITE_COLOR
			button.rect_scale = Vector2(1, 1)
			MusicAndSounds.sfx_player.stop()




func call_sub_menu(menu: CanvasLayer, start: Vector2, end: Vector2) -> void:
	menu.tween_menu.interpolate_property(menu, "offset", start, end, SUB_MENU_SPEED,Tween.TRANS_QUAD)
	menu.tween_menu.start()
	is_submenu_called = true



func dismiss_sub_menu(menu, start: Vector2, end: Vector2) -> void:
	menu.tween_menu.interpolate_property(menu, "offset", start, end, SUB_MENU_SPEED,Tween.TRANS_QUAD)
	menu.tween_menu.start()
	is_submenu_called = false
