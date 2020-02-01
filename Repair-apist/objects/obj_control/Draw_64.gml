
//GUI

if shop_time{
	
draw_sprite(spr_dia_player,0,display_get_gui_width() * 0.25,display_get_gui_height());

if has_robot{
	draw_sprite(robot_spr,robot_subimage,display_get_gui_width() * robot_x,display_get_gui_height());
	
}


}