
if !instance_exists(obj_control) instance_create_layer(0,0,"Instances",obj_control);

if !variable_global_exists("viewWidth") || !variable_global_exists("viewHeight"){
	global.viewWidth = 1366;
	global.viewHeight = 768;
}

if !layer_exists("MinigameWindow"){
	layer_create(-100,"MinigameWindow");
}
layer = layer_get_id("MinigameWindow");


rmWidth = 800;
rmHeight = 600;
viewX = display_get_gui_width()/2-rmWidth/2;
viewY = display_get_gui_height()/2-rmHeight/2;

winAlpha = 0;
winTAlpha = 1;

roomTo = -1;

tAlpha = 0;
mAlpha = global.miniGameAlpha;
if mAlpha{
	winAlpha = 1;
	winTAlpha = 0;
}
global.in_minigame = true;
if room == rm_shop global.in_minigame = false; //transition mode

if global.in_minigame {
	view_enabled = true;
	view_visible[0] = true;
	view_xport[0] = viewX;
	view_yport[0] = viewY;
	view_wport[0] = 800;
	view_hport[0] = 600;
	tAlpha = 1;
}

alarm[0] = 2;
alarm[5] = global.game_timer;

surface_gui = surface_create(1024,768);