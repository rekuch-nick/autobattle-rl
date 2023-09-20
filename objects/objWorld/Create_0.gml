room_speed = 60;

W = 37;
H = 23;
seed = 1;
wave = 0;
state = State.title;
layerF = -1;
layerB = -100;
layerM = -200;

draw_set_font(fntPlain);
draw_set_halign(fa_center);
getInput();



for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
	fmap[a, b] = noone;
	bmap[a, b] = noone;
	mmap[a, b] = noone;
}}




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