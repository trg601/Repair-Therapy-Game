/// cpu heats up if heart is not in calmzone


obj_calmzone.y = clamp(obj_calmzone.y,0,room_height);

 if (obj_calmzone.y - 64 < obj_breathe.y and obj_calmzone.y + 64 > obj_breathe.y){
	 heat = heat - 0.4;
	 heat = max(heat,0);
 }
 else{
	 heat = heat + 0.8;
 }
 
 if !done{
 if heat >= 100 {
	global.game_win = false;
	done = true;
	returnToShop();
 }
 }