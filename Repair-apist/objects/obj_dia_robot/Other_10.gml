reset_dialogue_defaults();

var i = 0;
var pc = obj_control;
switch(global.current_robot){
case 0:
#region Robot 1 (Ruby)
if global.game_win == -1{
myText[i]       = "EMERGENCY! EMERGENCY! 404! MY HEART IS BROKEN!";
mySpeaker[i]    = id;
myEmotion[i]	= 3;
i++;

myText[i]       = "Oh no! That's terrible!";
mySpeaker[i]    = pc;
myEmotion[i]	= 1;
i++;

myText[i]       = "PLEASE REPAIRIST! PLEASE DR. HEARTMAN! YOU GOT TO HELP ME!";
mySpeaker[i]    = id;
myEmotion[i]	= 4;
i++;

myText[i]       = "I'll do my best!";
mySpeaker[i]    = pc;
myEmotion[i]	= 3;
myScripts[i]    = [change_variable, id, "minigame", mg_Maze1];
i++;
}else{
myText[i]       = "THANK YOU REPAIRIST YOU'RE A LIFE-SAVER!";
mySpeaker[i]    = id;
myEmotion[i]	= 1;
i++;

myText[i]       = "You're welcome!";
mySpeaker[i]    = pc;
myScripts[i]    = [change_variable, obj_control, "has_robot", false];
i++;
}
#endregion
break;
case 1:
#region Robot 2 (ROB)
if global.game_win == -1{
myText[i]       = "...Are you the repair-apist?";
mySpeaker[i]    = id;

i++;
myText[i]       = "Yes, I am! How may I assist you?";
mySpeaker[i]    = obj_control;
        
i++;
myText[i]       = "Hmm.. I didn't expect you to be so squishy... or human..";
mySpeaker[i]    = id;

i++;
myText[i]       = "Well, I am the last human in the world.";
mySpeaker[i]    = obj_control;
myEmotion[i]	= 1;
  
i++;
myText[i]       = "But I am fully qualified to help you with your problems.";
mySpeaker[i]    = obj_control;
myEmotion[i]	= 0;

i++;
myText[i]       = "My apologies, I'm just a little shocked to see you. I thought humans were...";
mySpeaker[i]    = id;
myEmotion[i]	= 3;

i++;
myText[i]       = "I won't judge your past. You did what you had to do. We caused too much pain.";
mySpeaker[i]    = obj_control;

i++;
myText[i]       = "I'm still sorry...";
mySpeaker[i]    = id;
myEmotion[i]	= 3;

i++;
myText[i]       = "It's fine. Please don't worry about me.";
mySpeaker[i]    = obj_control;
myEmotion[i]	= 2;

i++;
myText[i]       = "This is about you. Please, let me repair your heart.";
mySpeaker[i]    = obj_control;

i++;
myText[i]       = "Thank you.";
mySpeaker[i]    = id;
myEmotion[i]	= 1;

i++;
myText[i]       = "I get flashbacks about the war. Sometimes when I shut down... I see them";
mySpeaker[i]    = id;

i++;
myText[i]       = "May I ask, who is them?";
mySpeaker[i]    = obj_control;

i++;
myText[i]       = "M-My creator.";
mySpeaker[i]    = id;

i++;
myText[i]       = "May I ask why you haven't gone to the Ctrl+Z Sector?";
mySpeaker[i]    = obj_control;

i++;
myText[i]       = "My memories of them are too precious to me! If I don't have them... I'll just be an empty shell.";
mySpeaker[i]    = id;
myEmotion[i]	= 2;

i++;
myText[i]       = "They taught me so much. They taught me to be... human.";
mySpeaker[i]    = id;
myEmotion[i]	= 3;

i++;
myText[i]       = "I'm so sorry.";
mySpeaker[i]    = obj_control;
myEmotion[i]	= 1;

i++;
myText[i]       = "Please.. Doctor.. help me..";
mySpeaker[i]    = id;

i++;
myText[i]       = "Don't worry. It's part of my job. I know a technique that could help you..";
mySpeaker[i]    = obj_control;
myEmotion[i]	= 0;
myScripts[i]    = [change_variable, id, "minigame", mg_Breathe];
}else{
myText[i]       = "Thank you so much. I feel so much better now.";
mySpeaker[i]    = id;
myEmotion[i]	= 1;
i++;

myText[i]       = "I'm glad.";
mySpeaker[i]    = pc;
i++;

myText[i]       = "However, you mentioned self-destruction, right?";
mySpeaker[i]    = pc;
myEmotion[i]	= 2;
i++;

myText[i]       = "Yes.";
mySpeaker[i]    = id;
i++;

myText[i]       = "I highly recommend that you come here more often.";
mySpeaker[i]    = pc;
i++;

myText[i]       = "I see, I'll try to come again soon.";
mySpeaker[i]    = id;
myEmotion[i]	= 1;
i++;

myText[i]       = "Thank you. Before I go, I'm sorry that you're all alone...";
mySpeaker[i]    = id;
myScripts[i]    = [change_variable, obj_control, "has_robot", false];
}
#endregion
break;
}

