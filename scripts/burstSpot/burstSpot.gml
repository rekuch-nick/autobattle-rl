function burstSpot(a, b, eff, dMin, dMax){
	
	if(!inBounds(a, b)){ return; }
	
	
	
	instance_create_depth(a * 32, b * 32, ww.layerE, eff);
	
	
	var m = ww.mmap[a, b];
	if(m != noone){
		var dam = irandom_range(dMin, dMax);
		m.hp -= dam;
	}
	

}