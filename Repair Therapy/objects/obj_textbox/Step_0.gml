//We check the type of dialogue to see if it is 1) "normal" or 2) a player choice dialogue.

if !layer_exists("Textbox"){
	layer_create(-75,"Textbox");
}
layer = layer_get_id("Textbox");

//----------TYPE 0: NORMAL
var interact = keyboard_check_pressed(interact_key) ||
keyboard_check_pressed(vk_space) || mouse_check_button_released(mb_left);
if(type[page] == 0){
    if(interact){
 
        //If we haven't "typed out" all the letters, immediately "type out" all letters (works as a "skip")
        if(charCount < str_len){
            charCount = string_length(text_NE);
        }
       
        //Only increase page IF page + 1,is less than the total number of entries
        else if(page+1 < array_length_1d(text)){
            event_perform(ev_other, ev_user0);
            switch(nextline[page]){
                case -1: instance_destroy();    exit;
                case  0: page += 1;             break;
                default: page = nextline[page];
            }
            event_perform(ev_alarm, 0);
           
        } else { event_perform(ev_other, ev_user0); instance_destroy(); }
    }
}
 
//----------TYPE 1: DIALOGUE CHOICE
else {
    if(chosen) exit;
    if(interact){
        chosen = true;
        alarm[2] = 10;
        audio_play_sound(select_snd_effect, priority_snd_effect, false);
    }
   
    //Change Choice
    var change_choice = keyboard_check_pressed(down_key) - keyboard_check_pressed(up_key);
    if(change_choice != 0){
        choice += change_choice;
        audio_play_sound(choice_snd_effect, priority_snd_effect, false);
    }
    if (choice < 0) { choice = array_length_1d(text[page])-1; }
    else if (choice > array_length_1d(text[page])-1) { choice = 0; }
}