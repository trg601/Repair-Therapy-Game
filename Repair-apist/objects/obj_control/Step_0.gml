
if keyboard_check_pressed(vk_f11){
	window_set_fullscreen(!window_get_fullscreen());
	controlResize();
}

if keyboard_check_pressed(vk_escape) game_end();

if keyboard_check_pressed(vk_space) { //load minigame
	goToMinigame(room+1);
}

if keyboard_check(vk_control) && keyboard_check_pressed(ord("R")){
	room_restart();
}

if keyboard_check_pressed(vk_f6){
	has_robot = true;
}

if has_robot && global.robot == noone{
	global.robot = instance_create_layer(0,0,"Instances",obj_dia_robot);
}

if has_robot{
	robot_x = lerp(robot_x,0.75,0.1);
}else{
	robot_x = lerp(robot_x,1.5,0.1);
	if robot_x > 1.4 && !global.in_minigame{
		with(global.robot) instance_destroy();
		global.cRobotName = "";
		global.robot = noone;
		global.current_robot++;
		global.game_win = -1;
		has_robot = true;
	}
}

if keyboard_check(ord("G")) has_robot = false;