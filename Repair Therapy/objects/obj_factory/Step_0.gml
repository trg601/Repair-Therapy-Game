/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_right_head)) {
	show_debug_message("test")
	if (obj_box_head.image_index >= 3) {
		obj_box_head.image_index = 0;
	} else {
		obj_box_head.image_index++;
	}
}
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_right_torso)) {
	if (obj_box_torso.image_index >= 3) {
		obj_box_torso.image_index = 0;
	} else {
		obj_box_torso.image_index++;
	}
}
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_right_legs)) {
	if (obj_box_legs.image_index >= 3) {
		obj_box_legs.image_index = 0;
	} else {
		obj_box_legs.image_index++;
	}
}

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_left_head)) {
	if (obj_box_head.image_index <= 0) {
		obj_box_head.image_index = 3;
	} else {
		obj_box_head.image_index--;
	}
}
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_left_torso)) {
	if (obj_box_torso.image_index <= 0) {
		obj_box_torso.image_index = 3;
	} else {
		obj_box_torso.image_index--;
	}
}
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_left_legs)) {
	if (obj_box_legs.image_index <= 0) {
		obj_box_legs.image_index = 3;
	} else {
		obj_box_legs.image_index--;
	}
}

/*if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_done)) {
	if (obj_blueprint.image_index == 0 && obj_box_head.image_index == 0 && obj_box_torso.image_index == 0 && obj_box_legs.image_index == 0) {
		global.game_win = true;
		returnToShop();
	} else if (obj_blueprint.image_index == 1 && obj_box_head.image_index == 1 && obj_box_torso.image_index == 1 && obj_box_legs.image_index == 1) {
		global.game_win = true;
		returnToShop();
	} else if (obj_blueprint.image_index == 2 && obj_box_head.image_index == 2 && obj_box_torso.image_index == 2 && obj_box_legs.image_index == 2) {
		global.game_win = true;
		returnToShop();
	}
}*/
