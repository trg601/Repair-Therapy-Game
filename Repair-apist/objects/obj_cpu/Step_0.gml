/// cpu heats up if heart is not in calmzone



 if (obj_calmzone.y - 64 < obj_breathe.y and obj_calmzone.y + 64 > obj_breathe.y){
	 if(heat != 0){
		 heat = heat - 1;
	 }
	 else{
		 heat = 0;
	 }
 }
 else{
	 heat = heat + 1;
 }
 
 //if heat == 100 then mg lost
