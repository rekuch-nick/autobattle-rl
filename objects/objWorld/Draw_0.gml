if(state == State.title){
	
	//draw_text(room_width / 2, 100, "Press ENTER to play");
	
	
	draw_text(room_width / 2, 600, "Seed: " + string(seed));
	
	
}



if(state == State.shop){
	
	//draw_text(room_width / 2, 700, "Press ENTER to fight wave " + string(wave));
	
	var s = playerUnitsTotal < playerUnitMax ? "Your Army:" : "     Army: (Full) "
	draw_text(120, 70, s);
	draw_text_color(1020, 10, "$" + string(playerCoins), c_yellow, c_yellow, c_yellow, c_yellow, 1);
	
}

if(state == State.playStarting){
	draw_set_alpha(1 - (stateCD * .03));
	draw_sprite_stretched(imgBG, 0, 0, 0, room_width, room_height);
	draw_set_alpha(1);
}

if(state == State.playStopping){
	draw_set_alpha((stateCD * .03));
	draw_sprite_stretched(imgBG, 0, 0, 0, room_width, room_height);
	draw_set_alpha(1);
}


if(state == State.play){
	draw_sprite_stretched(imgBG, 0, 0, 0, room_width, room_height);
	
}