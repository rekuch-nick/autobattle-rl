function drawUnitDesc(o){
	var s = getCreatureDesc(o);
	draw_set_halign(fa_left);
	draw_rectangle_color(0, 660, room_width, 730, c_black, c_black, c_black, c_black, false);
	draw_text_ext(20, 670, s, 32, room_width - 20);
		
	draw_set_halign(fa_center);
}