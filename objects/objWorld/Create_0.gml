room_speed = 60;
ms = 0;
W = 37;
H = 23;
seed = 1;
wave = 0; //wave = 6;
state = State.title;
layerF = -1;
layerB = -100;
layerM = -200;
layerE = -500;

cYellowSoft = $B2F9FF;

checkBattleEnd = false;

draw_set_font(fntPlain);
draw_set_halign(fa_center);
getInput();



worldReset();

var st = instance_create_depth(200, 40, 0, objButton);
st.txt = "Press ENTER to play";
st.w = room_width - 400;
st.buttonCode = ButtonCode.startGame;
startPressed = false


//playerArmy = [objKnight, objArcher, objArcher, objArcher, objArcher];
playerCoins = 0;


var s = instance_create_depth(64, 100, 0, objPlayerSquad);
s.nam = "Knight"; s.unit = objKnight; s.num = 2;

//var s = instance_create_depth(64, 100, 0, objPlayerSquad);
//s.nam = "Ogre Mage"; s.unit = objOgreMage; s.num = 4;


//var s = instance_create_depth(64, 132, 0, objPlayerSquad);
//s.nam = "Archer"; s.unit = objArcher; s.num = 2;

var s = instance_create_depth(64, 132, 0, objPlayerSquad);
s.nam = "White Mage"; s.unit = objHealer; s.num = 4;



//var s = instance_create_depth(64, 132, 0, objPlayerSquad);
//s.nam = "Pyro Mage"; s.unit = objEvoker; s.num = 6;




stateCD = 0;
