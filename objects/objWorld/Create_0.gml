room_speed = 60;

W = 37;
H = 23;
seed = 1;
wave = 0;
state = State.title;
layerF = -1;
layerB = -100;
layerM = -200;
layerE = -500;

checkBattleEnd = false;

draw_set_font(fntPlain);
draw_set_halign(fa_center);
getInput();



worldReset();



//playerArmy = [objKnight, objArcher, objArcher, objArcher, objArcher];

var s = instance_create_depth(100, 100, 0, objPlayerSquad);
s.nam = "Knight"; s.unit = objKnight; s.num = 4;



stateCD = 0;
