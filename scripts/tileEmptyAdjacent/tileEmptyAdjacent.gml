function tileEmptyAdjacent(aa, bb){
	
	tries = 0;
	while(tries < 30){
		tries ++;
		var a = aa + choose(-1, 0, 0, 1);
		var b = bb + choose(-1, 0, 0, 1);
		
		if(a == aa && b == bb){ continue; }
		if( !inBounds(a, b)){ continue; }
		
		if(ww.bmap[a, b] != noone){ continue; }
		if(ww.mmap[a, b] != noone){ continue; }
		
		
		
		return { a: a, b: b };
	}
	
	return noone;
}