//if(aly == 1){ draw_sprite_stretched(imgAly, 0, xSpot * 32, ySpot * 32, 32, 32); }
//if(aly == -1){ draw_sprite_stretched(imgFoe, 0, xSpot * 32, ySpot * 32, 32, 32); }

if(ww.state == State.play){
	if(aly == 1){ draw_sprite_stretched(imgAly, 0, x, y, 32, 32); }
	if(aly == -1){ draw_sprite_stretched(imgFoe, 0, x, y, 32, 32); }
}

draw_self();
if(img != ""){
	//draw_rectangle(x+4, y+4, x + 28, y + 28, true);
	if(img == "g"){
		draw_text_color(x + 16, y + 4, img, col, col, col, col, image_alpha);
	} else {
		draw_text_color(x + 16, y + 8, img, col, col, col, col, image_alpha);
	}
}
if(poison){
	var n = ww.ms / 6;
	draw_sprite_stretched(imgPoison, n, x, y, 32, 32);
}
if(rage > 0){
	var n = ww.ms / 2;
	draw_sprite_stretched(imgRage, n, x, y, 32, 32);
}
if(frozen > 0){
	var n = ww.ms / 7;
	draw_set_alpha(.4);
	draw_sprite_stretched(imgFrozen, n, x, y, 32, 32);
	draw_set_alpha(1);
}
if(mindControl){
	var n = ww.ms / 5;
	draw_set_alpha(.4);
	draw_sprite_stretched(imgControl, n, x, y, 32, 32);
	draw_set_alpha(1);
}

var c = aly == 1 ? c_lime : c_red;
var w = max(0, (hp / hpMax) * 24);
draw_rectangle_color(x+4, y+26, x+4+w, y+28, c, c, c, c, false);