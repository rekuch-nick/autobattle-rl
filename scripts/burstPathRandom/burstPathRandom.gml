function burstPathRandom(aa, bb, n, nn, dMin, dMax, eff, aly, ele){
	repeat(nn){
	
		while(n > 0){
			if(inBounds(aa, bb)){
				if(ww.mmap[aa, bb] == noone || ww.mmap[aa, bb].aly != aly){
					burstSpot(aa, bb, eff, dMin, dMax, ele);	
				}
			}
		
		
			n --;
			aa += choose(-1, 0, 1);
			bb += choose(-1, 0, 1);
		
		}
		
		
	}
	
	

}