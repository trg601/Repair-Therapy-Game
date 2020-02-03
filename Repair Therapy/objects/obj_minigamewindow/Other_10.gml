
viewX = (display_get_gui_width()/global.viewScale)/2-rmWidth/2;
viewY = (display_get_gui_height()/global.viewScale)/2-rmHeight/2;

if global.in_minigame{
	view_xport[0] = 0;
	view_yport[0] = 0;
	
	view_wport[0] = 800;
	view_hport[0] = 600;
}

surface_free(surface_gui);
