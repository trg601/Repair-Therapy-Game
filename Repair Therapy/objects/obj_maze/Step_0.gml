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
	if (hit_play) {
      audio_play_sound(Heartbeat, 2, false);
      hit_play = false;
	}
	shard++;
} else {
	hit_play = true;
}
if (place_meeting(x, y, obj_shard_2)) {
	instance_destroy(obj_shard_2);
	if (hit_play) {
      audio_play_sound(Heartbeat, 2, false);
      hit_play = false;
	}
	shard++;
} else {
	hit_play = true;
}
if (place_meeting(x, y, obj_shard_3)) {
	instance_destroy(obj_shard_3);
	if (hit_play) {
      audio_play_sound(Heartbeat, 2, false);
      hit_play = false;
	}
	shard++;
} else {
	hit_play = true;
}
if (place_meeting(x, y, obj_shard_4)) {
	instance_destroy(obj_shard_4);
	if (hit_play) {
      audio_play_sound(Heartbeat, 2, false);
      hit_play = false;
	}
	shard++;
} else {
	hit_play = true;
}
if (place_meeting(x, y, obj_shard_5)) {
	instance_destroy(obj_shard_5);
	if (hit_play) {
      audio_play_sound(Heartbeat, 2, false);
      hit_play = false;
	}
	shard++;
} else {
	hit_play = true;
}
if (place_meeting(x, y, obj_shard_6)) {
	instance_destroy(obj_shard_6);
	if (hit_play) {
      audio_play_sound(Heartbeat, 2, false);
      hit_play = false;
	}
	shard++;
} else {
	hit_play = true;
}
if (shard >= 6) {
	obj_finish.image_speed = 3;
	if (hit_play) {
		if !audio_is_playing(Heartbeat)
			audio_play_sound(Heartbeat, 1, false);
      hit_play = false;
	}
} else {
	obj_finish.image_index = shard;
	hit_play = true;
}

//CLOSE WINDOW (Game won): 
if (place_meeting(x, y, obj_finish)) {
	//obj_finish.image_speed = 15;
	global.game_win = true;
	returnToShop();
}