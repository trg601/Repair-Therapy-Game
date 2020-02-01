#region Camera
global.defWidth = 1366;
global.defHeight = 768;
global.winWidth = global.defWidth;
global.winHeight = global.defHeight;
global.viewWidth = global.winWidth;
global.viewHeight = global.winHeight;
view_enabled = true;
view_visible[0] = true;
camera = instance_create_layer(x,y,"Instances",obj_camera);
view_camera[0] = camera.camera;

window_set_fullscreen(true);

controlResize();
#endregion