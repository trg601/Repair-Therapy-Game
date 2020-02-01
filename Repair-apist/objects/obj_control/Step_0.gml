
if keyboard_check_pressed(vk_f11){
	window_set_fullscreen(!window_get_fullscreen());
	controlResize();
}

if keyboard_check_pressed(vk_escape) game_end();

if keyboard_check_pressed(vk_space) { //load minigame
	goToMinigame(room+1);
}

if keyboard_check_pressed(ord("R")){
	room_restart();
}
