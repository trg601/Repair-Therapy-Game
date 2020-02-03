/// @description Insert description here
k_left = keyboard_check(vk_left);
k_right = keyboard_check(vk_right);
k_jump = keyboard_check(vk_up);

var move = k_right - k_left;

Hsp = move * Cruisespd;

Vsp = Vsp + Grv;

if (place_meeting(x,y+1,obj_platform)) && (k_jump){
	Vsp = -5;
}

if (place_meeting(x+Hsp,y,obj_block)){
	while (!place_meeting(x+sign(Hsp),y,obj_block)){
		x = x + sign(Hsp);
	}
	Hsp = 0;
}

x = x + Hsp;

if (place_meeting(x,y+Vsp,obj_platform)){
	while (!place_meeting(x,y+sign(Vsp),obj_platform)){
		y = y + sign(Vsp);
	}
	Vsp = 0;
}

y = y + Vsp;

if place_meeting(x,y,obj_PGoal){
	global.game_win = true;
	returnToShop();	
}

if x!=xprevious{
	image_speed=1;
}else image_speed=0;