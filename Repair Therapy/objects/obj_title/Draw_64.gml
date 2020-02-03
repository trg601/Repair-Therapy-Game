
var gW = display_get_gui_width()/global.viewScale;
var gH = display_get_gui_height()/global.viewScale;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
draw_sprite(spr_title_logo,0,gW/2,50);

draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var xx = gW/2-width/2, yy = gH/2+50;
var img = point_in_rectangle(mx,my,xx,yy,xx+width,yy+height);
draw_sprite(spr_button,img,xx,yy);
if img && mouse_check_button_pressed(mb_left){
	global.miniGameAlpha = 0;
	global.mg_background_x = 0;
	global.game_timer = -1;
	global.viewScale = 1;
	
	global.game_win = -1;
	global.current_robot = 0;
	
	global.cRobotName = "";
	global.cRobotSpr = spr_dia_robot;
	
	global.do_intro = true;
	room=rm_shop;
}
draw_set_color(c_black);
draw_text_transformed(xx+180+5, yy+30+5, "PLAY", 1, 1, 350);
draw_set_color(c_white);
draw_text_transformed(xx+180, yy+30, "PLAY", 1, 1, 350);

var xx = gW/2-width/2, yy = gH/2+250;
var img = point_in_rectangle(mx,my,xx,yy,xx+width,yy+height);
draw_sprite(spr_button,img,xx,yy);
if img && mouse_check_button_pressed(mb_left){
	game_end();
}
draw_set_color(c_black);
draw_text_transformed(xx+180+5, yy+30+5, "QUIT", 1, 1, 350);
draw_set_color(c_white);
draw_text_transformed(xx+180, yy+30, "QUIT", 1, 1, 350);
