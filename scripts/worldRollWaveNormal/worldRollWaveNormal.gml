function worldRollWaveNormal(){
	
	
	waveArmy = [];
	var level = 0;
	
	var n = 4 + (wave * 4);
	
	if(n > 50){ n -= 30; level ++; }
	if(n > 50){ n -= 30; level ++; }
	
	var c1 = getCreature(irandom_range(1, 5), level).typ;
	var c2 = getCreature(irandom_range(1, 5), level).typ;
	var c3 = getCreature(irandom_range(1, 5), level).typ;
	
	if(irandom_range(0, 99) + n < 60){ c2 = c1; }
	if(irandom_range(0, 99) + n < 60){ c3 = c1; }
	
	
	repeat(n){
		arrayAdd(waveArmy, choose(c1, c2, c3));
		
	}
	
	
	
	
	
	return;
	
	var goon = objMilitia;
	var elite = objKnight;
	var support = objArcher;
	
	var goon2 = choose(objSnake, objOgre);
	if(irandom_range(0, 99) < wave){ goon2 = objTroll; }
	


	waveArmy = [goon, goon, goon, goon];
	repeat(wave + 1){ 
		var r = irandom_range(1, 5 + floor(wave / 5));
		
		
		var goon = objMilitia;
		var elite = objKnight;
		var support = objArcher;
	
		if(irandom_range(0, 99) < wave){ goon = goon2; }
		
		if(irandom_range(0, 99) < wave){ support = objEvoker; }
		if(irandom_range(0, 99) < wave){ support = objHealer; }
		
		
		
		
		
		
		if(r == 3){ arrayAdd(waveArmy, support); arrayAdd(waveArmy, support); 
		} else if(r == 4){ arrayAdd(waveArmy, support); arrayAdd(waveArmy, support); arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); 
		} else if (r == 5) { arrayAdd(waveArmy, elite);
		} else if (r >= 6) { arrayAdd(waveArmy, elite); arrayAdd(waveArmy, elite);
			
			
		} else { arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); }
	}

}