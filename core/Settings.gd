extends Node

onready var settings_file = "user://settings.save"
var music_volume := -40
var sound_volume := -40
var screen_resolution := 1
var full_screen := false


const MIN_SOUND_VOLUME := -80
const MAX_SOUND_VOLUME := 0
const MIN_MUSIC_VOLUME := -80
const MAX_MUSIC_VOLUME := 0
const MIN_SCREEN_RESOLUTION := 0
const MAX_SCREEN_RESOLUTION := 3

onready var root = get_viewport()

var screen_sizes := [[854, 480], [1280, 720], [1366, 768], [1920, 1080]]


func load_settings():
	var f = File.new()
	if f.file_exists(settings_file):
		f.open(settings_file, File.READ)
		music_volume = f.get_var()
		sound_volume = f.get_var()
		screen_resolution = f.get_var()
		full_screen = f.get_var()
		f.close()

func _ready():
	load_settings()
	set_screen_resolution()
	

func decrease_sound_volume() -> void:
	if sound_volume > MIN_SOUND_VOLUME:
		sound_volume -= 5
#		Events.emit_signal("sound_volume_changed")

func increase_sound_volume() -> void:
	if sound_volume < MAX_SOUND_VOLUME:
		sound_volume += 5
#		Events.emit_signal("sound_volume_changed")

func decrease_music_volume() -> void:
	if music_volume > MIN_MUSIC_VOLUME:
		music_volume -= 5
#		Events.emit_signal("music_volume_changed")

func increase_music_volume() -> void:
	if music_volume < MAX_MUSIC_VOLUME:
		music_volume += 5
#		Events.emit_signal("music_volume_changed")

func decrease_screen_resolution() -> void:
	if screen_resolution > 1:
		screen_resolution -= 1
		set_screen_resolution()
#		Events.emit_signal("resolution_changed")

func increase_screen_resolution() -> void:
	if screen_resolution < 4:
		screen_resolution += 1
		set_screen_resolution()
#		Events.emit_signal("resolution_changed")

func set_screen_resolution() -> void:
	if screen_resolution == 1:
		var screen = screen_sizes[0]
		OS.window_size = Vector2(screen[0], screen[1])
		root.size = Vector2(screen[0], screen[1])
#		screen_metrics()
	elif screen_resolution == 2:
		var screen = screen_sizes[1]
		OS.window_size = Vector2(screen[0], screen[1])
		root.size = Vector2(screen[0], screen[1])
#		screen_metrics()
	elif screen_resolution == 3:
		var screen = screen_sizes[2]
		OS.window_size = Vector2(screen[0], screen[1])
		root.size = Vector2(screen[0], screen[1])
#		screen_metrics()
	elif screen_resolution == 4:
		var screen = screen_sizes[3]
		OS.window_size = Vector2(screen[0], screen[1])
		root.size = Vector2(screen[0], screen[1])
#		screen_metrics()



func toggle_fullscreen() -> void:
	full_screen = OS.window_fullscreen
	if full_screen == false:
		full_screen = true
		OS.window_fullscreen = full_screen
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
		set_screen_resolution()
	elif full_screen == true:
		full_screen = false
		OS.window_fullscreen = full_screen
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
		set_screen_resolution()

#func screen_metrics():
#	print("[Screen Metrics]")
#	print("  Display size: ", OS.get_screen_size())
#	print("Decorated Window size: ", OS.get_real_window_size())
#	print("Window size: ", OS.get_window_size())
#	print("Root size: ", root.get_size_override())
#	print("Project Settings: Width=", ProjectSettings.get_setting("display/window/size/width"), " Height=", ProjectSettings.get_setting("display/window/size/height")) 
#	print(OS.get_window_size().x)
#	print(OS.get_window_size().y)


func save_settings():
	print("SAVE!!!!!")
	var f = File.new()
	f.open(settings_file, File.WRITE)
	f.store_var(music_volume)
	f.store_var(sound_volume)
	f.store_var(screen_resolution)
	f.store_var(full_screen)
	f.close()
