if global.game_win == false{
	audio_play_sound(snd_game_over,0,0);
	room_restart();
	return false;
}
with(obj_minigamewindow){
	global.miniGameAlpha = 1;
	roomTo = rm_shop;
	winTAlpha = 1;
	
	if global.game_win{
		if room == mg_Maze1
			roomTo = mg_Maze2;
		else if room == mg_Maze2
			roomTo = mg_Maze3;
		else if room == mg_Maze3
			roomTo = mg_Maze4;
		/*else if room == mg_Maze4
			roomTo = mg_Maze5;*/
		else if room == rm_platform
			roomTo = rm_platform2;
		else if room == rm_platform2
			roomTo = rm_platform3;
	}
}