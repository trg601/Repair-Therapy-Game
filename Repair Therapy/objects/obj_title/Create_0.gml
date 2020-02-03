global.defWidth = 1366;
global.defHeight = 768;
global.winWidth = global.defWidth;
global.winHeight = global.defHeight;
global.viewWidth = global.winWidth;
global.viewHeight = global.winHeight;
global.viewScale = 1;

view_enabled = true;
view_visible[0] = true;
camera = instance_create_layer(x,y,"Instances",obj_camera);
view_camera[0] = camera.camera;

width = sprite_get_width(spr_button);
height = sprite_get_height(spr_button);

controlResize();