///Reload GUI
if instance_exists(obj_textbox){
    with(obj_textbox){
        gui_width   = display_get_gui_width()/global.viewScale;
        gui_height  = display_get_gui_height()/global.viewScale;
        gb_diff     = gui_width - boxWidth;
        pos_x           = (gb_diff/2)+(portraitWidth/2);
        pos_y           = gui_height-boxHeight-13;
        name_box_x      = pos_x + (8 * scale);
        name_box_y      = pos_y - (23 * scale);
		name_box_text_x     = pos_x + x_buffer+5;
		name_box_text_y     = pos_y + x_buffer - 10;
        finishede_x     = pos_x + boxWidth - x_buffer-5;
        finishede_y     = pos_y + boxHeight - y_buffer-5;
    }
}