draw_self();
if(img != ""){
	//draw_rectangle(x+4, y+4, x + 28, y + 28, true);
	draw_text_color(x + 16, y + 8, img, col, col, col, col, image_alpha);
}
if(poison){
	var n = ww.ms / 6;
	draw_sprite_stretched(imgPoison, n, x, y, 32, 32);
}

var c = aly == 1 ? c_lime : c_red;
var w = max(0, (hp / hpMax) * 24);
draw_rectangle_color(x+4, y+26, x+4+w, y+28, c, c, c, c, false);