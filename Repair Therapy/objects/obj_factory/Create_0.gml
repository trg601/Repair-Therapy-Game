/// @description Insert description here
// You can write your code in this editor
obj_box_head.image_index = irandom_range(0, 3);
obj_box_torso.image_index = irandom_range(0, 3);
obj_box_legs.image_index = irandom_range(0, 3); 
obj_blueprint.image_index = irandom_range(0, 3);

global.game_timer = 15 * room_speed;