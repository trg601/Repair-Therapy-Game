/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_right)) {
	if ((!place_meeting(x+5, y, obj_block)) && (!place_meeting(x+5, y, obj_wall))) {
		x += 5;
	}
}
if (keyboard_check(vk_left)) {
	if ((!place_meeting(x-5, y, obj_block)) && (!place_meeting(x-5, y, obj_wall))) {
		x -= 5;
	}
}
if (keyboard_check(vk_up)) {
	if ((!place_meeting(x, y-5, obj_block)) && (!place_meeting(x, y-5, obj_wall))) {
		y -= 5;
	}
}
if (keyboard_check(vk_down)) {
	if ((!place_meeting(x, y+5, obj_block)) && (!place_meeting(x, y+5, obj_wall))) {
		y += 5;
	}
}
if (place_meeting(x, y, obj_shard_1)) {
	instance_destroy(obj_shard_1);
	shard++;
}
if (place_meeting(x, y, obj_shard_2)) {
	instance_destroy(obj_shard_2);
	shard++;
}
if (place_meeting(x, y, obj_shard_3)) {
	instance_destroy(obj_shard_3);
	shard++;
}
if (place_meeting(x, y, obj_shard_4)) {
	instance_destroy(obj_shard_4);
	shard++;
}
if (place_meeting(x, y, obj_shard_5)) {
	instance_destroy(obj_shard_5);
	shard++;
}
if (place_meeting(x, y, obj_shard_6)) {
	instance_destroy(obj_shard_6);
	shard++;
}
if (shard >= 6) {
	obj_finish.image_speed = 3;
} else {
	obj_finish.image_index = shard;
}

//CLOSE WINDOW (Game won): 
if (place_meeting(x, y, obj_finish)) {
	//obj_finish.image_speed = 15;
	global.game_win = true;
	returnToShop();
}