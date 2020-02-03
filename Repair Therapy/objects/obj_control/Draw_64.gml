
//GUI

var gW = display_get_gui_width()/global.viewScale;
var gH = display_get_gui_height()/global.viewScale;

if shop_time{
	
draw_sprite(spr_dia_player,emote,gW * 0.25,gH);

if has_robot{
	if instance_exists(global.robot){
		robot_subimage = global.robot.emote;
	}
}

draw_sprite(global.cRobotSpr,robot_subimage,gW * robot_x,gH);

}