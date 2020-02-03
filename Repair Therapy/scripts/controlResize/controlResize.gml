if window_get_fullscreen(){
    global.winWidth = display_get_width();
    global.winHeight = display_get_height();
	global.viewScale = 0.75;
	if global.winWidth > 1400{
		global.viewScale = 1;
	}
	if global.winWidth > 2000{
		global.viewScale = 2;
	}
}else{
    global.winWidth = global.defWidth;
    global.winHeight = global.defHeight;
	global.viewScale = 0.75;
}


global.viewWidth = global.winWidth/global.viewScale;
global.viewHeight = global.winHeight/global.viewScale;

view_wport[0] = global.winWidth;
view_hport[0] = global.winHeight;
surface_resize(application_surface, global.viewWidth, global.viewHeight);
window_set_size(global.winWidth, global.winHeight);
window_set_position(display_get_width()/2-global.winWidth/2, display_get_height()/2-global.winHeight/2);
display_set_gui_maximize(global.viewScale,global.viewScale);


if instance_exists(obj_camera) with(obj_camera) event_user(0);
if instance_exists(obj_minigamewindow) with(obj_minigamewindow) alarm[0]=1;

var cam = obj_camera;
var cx = global.viewWidth/2;
var cy = global.viewHeight/2;
var vm = matrix_build_lookat(cx,cy,-1000,cx,cy,0,0,1,0);
camera_set_view_mat(cam.camera,vm);

if instance_exists(obj_textbox) with(obj_textbox) alarm[6]=1;