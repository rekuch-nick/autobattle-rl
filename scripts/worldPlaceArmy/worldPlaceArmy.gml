function worldPlaceArmy(army, aly){
	
	
	for(var i=0; i<array_length(army); i++){
		var t = army[i];
		if(t == noone){ continue; }
		
		var b1 = 0;
		var b2 = H - 1;
		
		var a1 = 0;
		var a2 = a1 + 6;
		
		if(aly == -1){
			a2 = W - 1;
			a1 = a2 - 6;
		}
		
		do {
			var a = irandom_range(a1, a2);
			var b = irandom_range(b1, b2);
		} until (
			bmap[a, b] == noone &&
			mmap[a, b] == noone
		);
		
		
		
		
		var c = instance_create_depth(a * 32, b * 32, layerM, t);
		c.aly = aly;
		mmap[a, b] = c;
		
		
	}
	
	

}