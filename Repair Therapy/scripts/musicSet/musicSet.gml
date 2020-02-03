if cMusic!=argument0{
	cMusic = argument0;
	audio_stop_all();
	musicid = audio_play_sound(cMusic, 0, true);
}