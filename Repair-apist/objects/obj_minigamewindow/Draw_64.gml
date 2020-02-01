
draw_sprite_tiled_ext(spr_minigame_background,0,background_x,background_x,1,1,c_white,mAlpha);

draw_set_alpha(mAlpha);

draw_set_color(c_black);
draw_rectangle(viewX, viewY, viewX + rmWidth, viewY + rmHeight, 0);
draw_set_color(c_purple);
draw_rectangle(viewX, viewY, viewX + rmWidth, viewY + rmHeight, 1);

draw_set_alpha(1);