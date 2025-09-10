extends Node

@onready var bg_music: AudioStreamPlayer = $BGMusic
@onready var sfx: AudioStreamPlayer = $SFX
@onready var dead_sfx: AudioStreamPlayer = $DeadSFX

func play_bg_music():
	bg_music.play(0.0)

func stop_bg_music():
	bg_music.stop()
	
func play_sfx(SfxPath,volume):
	var new_stream = load(SfxPath)
	sfx.stream = new_stream
	sfx.volume_db = float(volume)
	sfx.play()
	
func play_dead_sfx():
	dead_sfx.play()
