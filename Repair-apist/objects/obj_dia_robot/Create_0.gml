
event_inherited();

myName = "The fact that you are seeing this, is bad.";
global.cRobotSpr = spr_dia_robot;
switch(global.current_robot){
case 0:
myName = "Ruby";
global.cRobotSpr = spr_dia_ruby;
break;
case 1:
myName = "Rob";
global.cRobotSpr = spr_dia_robot;
break;
}
myVoice = snd_talk1;
emote = 0;
minigame = -1;

global.cRobotName = myName;

alarm[0] = 1;