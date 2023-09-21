room_speed = 60;

W = 37;
H = 23;
seed = 1;
wave = 0;
state = State.title;
layerF = -1;
layerB = -100;
layerM = -200;

checkBattleEnd = false;

draw_set_font(fntPlain);
draw_set_halign(fa_center);
getInput();



worldReset();



playerArmy = [objKnight, objKnight, objKnight, objKnight];



stateCD = 0;
enum State {
	title,
	play,
	playStarting,
	shop,
}

enum AI {
	plain,
}