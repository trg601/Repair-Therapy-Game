
if keyboard_check_pressed(vk_f11){
	window_set_fullscreen(!window_get_fullscreen());
	controlResize();
}

if keyboard_check_pressed(vk_escape) room=rm_title;

/*if keyboard_check_pressed(vk_space) { //load minigame
	goToMinigame(room+1);
}*/

if keyboard_check(vk_control) && keyboard_check_pressed(ord("R")){
	room_restart();
}

if has_robot && global.robot == noone && take_patients{
	global.robot = instance_create_layer(0,0,"Instances",obj_dia_robot);
}

if take_patients{
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
		if global.current_robot > 3{
			has_robot = false;
			take_patients = false;
			end_of_game = true;
			alarm[7] = room_speed;
		}
	}
}
}

if end_of_game == 2{
	if alarm[8] == -1 alarm[8] = room_speed;
}
