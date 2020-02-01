///@desc Resize

var pm;
if fixed_width{
	pm = matrix_build_projection_ortho(800,600,1,10000);
}else{
	pm = matrix_build_projection_ortho(global.viewWidth,global.viewHeight,1,10000);
}

camera_set_proj_mat(camera,pm);