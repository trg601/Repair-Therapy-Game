
if keyboard_check_pressed(vk_f11){
	window_set_fullscreen(!window_get_fullscreen());
	controlResize();
}

if keyboard_check_pressed(vk_escape) game_end();

if keyboard_check_pressed(vk_space) { //load minigame
	if !instance_exists(obj_minigamewindow){
		instance_create_layer(0,0,"Instances",obj_minigamewindow);
	}
}