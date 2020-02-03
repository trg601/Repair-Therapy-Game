
global.miniGameAlpha = 0;
global.mg_background_x = 0;
global.game_timer = -1;
global.viewScale = 1;

global.game_win = -1;
global.current_robot = 0;

global.cRobotName = "";
global.cRobotSpr = spr_dia_robot;

global.do_intro = true;

if !instance_exists(obj_music) instance_create_layer(0,0,"Instances",obj_music);

window_set_fullscreen(1);

room_goto_next();