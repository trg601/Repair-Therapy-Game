
//GUI

var gW = display_get_gui_width()/global.viewScale;
var gH = display_get_gui_height()/global.viewScale;

if shop_time{
	
draw_sprite(spr_dia_player,0,gW * 0.25,gH);

if has_robot{
	draw_sprite(robot_spr,robot_subimage,gW * robot_x,gH);
	
}


}