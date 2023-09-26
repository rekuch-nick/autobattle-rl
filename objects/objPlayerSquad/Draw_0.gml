if(ww.state != State.shop){ return; }

draw_self();
draw_set_halign(fa_left);
draw_text(x + 10, y + 8, nam + " x" + string(num));
draw_set_halign(fa_center);




