if room!=rm_shop exit;
if(instance_exists(obj_textbox)){ alarm[7]=1; exit }   //exit if a textbox already exists

event_user(0);                              //if you need variables to update for text

//Hand over variables
create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);