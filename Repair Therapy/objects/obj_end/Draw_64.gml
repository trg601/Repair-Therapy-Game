
var gW = display_get_gui_width()/global.viewScale;
var gH = display_get_gui_height()/global.viewScale;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

draw_set_font(fnt_default);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var text = "Thanks for playing! We hope you had a good time!\n\n\n"+
"Programmers:\nTyler Garman\nMika Liv-Feyman\nBrandon Dao\n\nArtists:\nVincent Abella\nSJ Singh\nVanessa Va Verka\nTikal Rivera\n\nAudio:\nGabriel Solano!";

var xx = (sin(current_time/500)+1)*2+3;
draw_text(gW/2+xx,gH/2+xx,text);
draw_set_color(c_white);
draw_text(gW/2,gH/2,text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

