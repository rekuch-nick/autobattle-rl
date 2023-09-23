function healBurst(aa, bb, r, al, amt){
	
	for(var a=aa-r; a<=aa+r; a++){ for(var b=bb-r; b<=bb+r; b++){
		if(!inBounds(a, b)){ continue; }
		var m = ww.mmap[a, b];
		if(m != noone){
			if(m.aly == al){
				m.poison = false;
				m.hp = clamp(m.hp + amt, 0, m.hpMax);
				instance_create_depth(m.xSpot*32, m.ySpot*32, ww.layerE, effHeal);
			}
		}
	}}
	
	
	
	
}