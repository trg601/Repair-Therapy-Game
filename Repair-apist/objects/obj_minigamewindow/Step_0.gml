
if mAlpha < tAlpha mAlpha += 0.01;

if mAlpha > tAlpha{
	mAlpha -= 0.01;
	if mAlpha <= tAlpha instance_destroy();
}

if winAlpha < winTAlpha{
	winAlpha += 0.01;
	if winAlpha >= winTAlpha{
		winAlpha = winTAlpha;
		if roomTo != -1{
			global.miniGameAlpha = 1;
			room=roomTo;
		}
	}
}else if winAlpha > winTAlpha{
	winAlpha -= 0.01;
	if winAlpha <= winTAlpha
		winAlpha = winTAlpha;
}

global.mg_background_x += 0.1;

//Draw to surface
if !surface_exists(surface_gui)
	surface_gui = surface_create(global.viewWidth, global.viewHeight);

surface_set_target(surface_gui);
draw_clear_alpha(c_black,0);

draw_sprite_tiled_ext(spr_minigame_background,0,global.mg_background_x,global.mg_background_x,1,1,c_white,mAlpha);

//Cut out hole for the game window
gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_rectangle(viewX, viewY, viewX + rmWidth, viewY + rmHeight, 0);
gpu_set_blendmode(bm_normal);

draw_set_alpha(winAlpha);
draw_set_color(c_purple);
draw_rectangle(viewX,viewY,viewX+rmWidth,viewY+rmHeight,0);
draw_set_color(c_black);
draw_set_alpha(1);

draw_sprite_ext(spr_minigame_window,0,viewX,viewY+7,1,1,0,c_white,mAlpha);

draw_set_alpha(mAlpha);
var time = alarm[5]/room_speed;
if time < 0 time = 0;
draw_set_font(fnt_default);
draw_text(viewX+10,viewY-45,"Time Remaining: "+string(time)+"s");
draw_set_alpha(1);

surface_reset_target();

if global.in_minigame{
	var cam = obj_control.camera;
	var cx = rmWidth/2;
	var cy = rmHeight/2;
	var vm = matrix_build_lookat(cx,cy,-1000,cx,cy,0,0,1,0);
	camera_set_view_mat(cam.camera,vm);
	
	if keyboard_check_pressed(vk_space){
		returnToShop();
	}
	
	/*if global.game_timer != -1 && mAlpha >= 1{
		global.game_timer --;
		if global.game_timer <= 0{
			global.game_timer = -1;
			global.game_win = false;
			returnToShop();
		}
	}*/
}