if global.game_win == false{
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
		else if room == mg_Maze4
			roomTo = mg_Maze5;
	}
}