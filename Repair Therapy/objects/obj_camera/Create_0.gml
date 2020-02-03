camera = camera_create();
var vm = matrix_build_lookat(0,0,-1000,0,0,0,0,1,0);
var pm = matrix_build_projection_ortho(global.viewWidth,global.viewHeight,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

fixed_width = false;