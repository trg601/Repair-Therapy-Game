
if keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_left) room=rm_title;

if keyboard_check_pressed(vk_f11){
	window_set_fullscreen(!window_get_fullscreen());
	controlResize();
}