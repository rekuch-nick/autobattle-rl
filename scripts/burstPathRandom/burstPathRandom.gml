function burstPathRandom(aa, bb, n, dMin, dMax, eff, aly){
	
	while(n > 0){
		if(inBounds(aa, bb)){
			if(ww.mmap[aa, bb] == noone || ww.mmap[aa, bb].aly != aly){
				burstSpot(aa, bb, eff, dMin, dMax);	
			}
		}
		
		
		n --;
		aa += choose(-1, 0, 1);
		bb += choose(-1, 0, 1);
		
	}
	
	

}