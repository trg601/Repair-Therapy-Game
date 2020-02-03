
event_inherited();

myName = "The fact that you are seeing this, is bad.";
global.cRobotSpr = spr_dia_robot;
switch(global.current_robot){
case 0:
myName = "Heart Full and Orbulous";
global.cRobotSpr = spr_dia_ruby;
break;
case 1:
myName = "Rob";
global.cRobotSpr = spr_dia_robot;
break;
case 2:
myName = "Null";
global.cRobotSpr = spr_dia_null;
break;
case 3:
myName = "Carrie";
global.cRobotSpr = spr_dia_caretaker;
break;
}
myVoice = snd_talk1;
emote = 0;
minigame = -1;

global.cRobotName = myName;

alarm[0] = 1;