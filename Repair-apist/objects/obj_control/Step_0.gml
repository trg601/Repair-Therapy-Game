
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

if keyboard_check_pressed(vk_f6){
	has_robot = true;
}

if has_robot && robot == noone{
	robot = instance_create_layer(0,0,"Instances",obj_dia_robot);
}