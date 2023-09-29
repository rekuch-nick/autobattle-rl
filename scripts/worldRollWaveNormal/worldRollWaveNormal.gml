function worldRollWaveNormal(){
	
	
	waveArmy = [];
	var level = ww.startingLevel;
	
	var n = 4 + (wave * 4); // * 4
	n += floor(wave / 14) * 10;
	
	
	
	if(n > 50){ n -= 35; level ++; }
	if(n > 50){ n -= 35; level ++; }
	if(n > 50){ n -= 35; level ++; }
	
	n *= 2;
	
	var ct = []; var cc = [];
	var nn = choose(1, 2, 2, 3, 3, 3, 4);
	for(var i=0; i<nn; i++){
		var l = clamp(choose(level, level - 1), 0, 5);
		
		ct[i] = getCreature(irandom_range(1, 5), l).typ; 
		cc[i] = l == level ? 2 : 1;
	}
	
	while(n > 0){
		var i = irandom_range(0, array_length(ct) - 1);
		arrayAdd(waveArmy, ct[i]);
		n -= cc[i];
	}
	
	
	//if(wave > 6 && wave % 6 == 0){
		//var t = irandom_range(1, 3);
		//var nnn = 1 + floor(wave / 20);
		//repeat(nnn){ arrayAdd(waveArmy, getCreature(t, 5).typ); }
	//}
	
	
	return;
	
}