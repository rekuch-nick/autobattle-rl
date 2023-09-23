draw_self();

draw_set_halign(fa_left);
draw_text(x + 20, y + 10, txt);

draw_set_halign(fa_right);
draw_text_color(x + sprite_width - 20, y + 40, "$" + string(price), c_yellow, c_yellow, c_yellow, c_yellow, 1);

draw_set_halign(fa_center);