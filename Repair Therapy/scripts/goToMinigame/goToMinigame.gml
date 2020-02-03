if !instance_exists(obj_minigamewindow){
	global.game_timer = -1;
	global.miniGameAlpha = 0;
	var ins = instance_create_layer(0,0,"Instances",obj_minigamewindow);
	ins.tAlpha = 1;
	ins.roomTo = argument0;
	return true;
}else return false;