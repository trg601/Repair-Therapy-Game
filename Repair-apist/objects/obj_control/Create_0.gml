#region Camera
global.defWidth = 1366;
global.defHeight = 768;
global.winWidth = global.defWidth;
global.winHeight = global.defHeight;
global.viewWidth = global.winWidth;
global.viewHeight = global.winHeight;

global.in_minigame = false;
view_enabled = true;
view_visible[0] = true;
camera = instance_create_layer(x,y,"Instances",obj_camera);
view_camera[0] = camera.camera;

if global.miniGameAlpha{
	instance_create_layer(0,0,"Instances",obj_minigamewindow);
}

shop_time = false;
if room=rm_shop shop_time = true;
has_robot = true;
robot_name = "";
robot_spr = spr_dia_robot;
robot_subimage = 0;
robot_x = 0.75;
if global.cRobotName != ""{
	robot_name = global.cRobotName;
	robot_spr = global.cRobotSpr;
	
}

controlResize();
#endregion