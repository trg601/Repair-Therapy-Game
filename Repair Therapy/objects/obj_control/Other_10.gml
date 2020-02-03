reset_dialogue_defaults();

if !end_of_game{
var i = 0;
myText[i]       = "*yawn* It's almost time to open up. I should unlock the doors.";
mySpeaker[i]    = id;
myEmotion[i]	= 4;
i++;

myText[i]       = "Oops almost forgot my glasses! Can't see without them! Nor can I help my patients!";
mySpeaker[i]    = id;
i++;

myText[i]       = "Oh? I think I can see someone already? You can never rest when you're the only repair therapist in the city!";
mySpeaker[i]    = id;
i++;

myText[i]       = "*doors open* You can come in!";
mySpeaker[i]    = id;
myScripts[i]    = [change_variable, id, "take_patients", true];
i++;
}else{
var i = 0;
myText[i]       = "What a long day...";
mySpeaker[i]    = id;
myEmotion[i]	= 1;
i++;

myText[i]       = "I shouldn't have entered that Global Cognitive Behavioral Therapy for Robots jam last weekend. It really took it out of me.";
mySpeaker[i]    = id;
i++;

myText[i]       = "I just want to go home, have a nice cup of tea, and sleep.";
mySpeaker[i]    = id;
myScripts[i]    = [change_variable, id, "end_of_game", 2];
i++;	
}