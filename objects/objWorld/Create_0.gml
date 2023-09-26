room_speed = 60;
battleSpeed = 60;
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
cBrownSoft = $5180A3;
cBlueSoft = $E5D0A0;
cPink = $C29AF4;
cSnakeGreen = $44B224;
cBlueOrc = $B28100;
cBrownThorn = $053C66;

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


rngCount = 0;





playerCoins = 60;
//playerCoins = 999990060; //////
playerUnitLevel = 0;
playerUnitMax = 20;
playerUnitMaxMax = 161;
playerSquadMax = 14;

playerHPBonus = 0;
playerDruidSummonPower = 1;


var s = instance_create_depth(64, 100, 0, objPlayerSquad);
s.nam = "Fighter"; s.unit = objFighter; s.num = 4;
//s.nam = "DEBUG"; s.unit = objArcherLong; s.num = 4;


//var s = instance_create_depth(64, 132, 0, objPlayerSquad);
//s.nam = "Archer"; s.unit = objArcher; s.num = 4;

//var s = instance_create_depth(64, 132, 0, objPlayerSquad);
//s.nam = "Enchanter"; s.unit = objEnchanter; s.num = 4;

//var s = instance_create_depth(64, 132, 0, objPlayerSquad);
//s.nam = "White Mage"; s.unit = objHealer; s.num = 4;



//var s = instance_create_depth(64, 132, 0, objPlayerSquad);
//s.nam = "Pyro Mage"; s.unit = objEvoker; s.num = 6;


playerUnitsTotal = 0;
with(objPlayerSquad){
	ww.playerUnitsTotal += num;
}


stateCD = 0;
