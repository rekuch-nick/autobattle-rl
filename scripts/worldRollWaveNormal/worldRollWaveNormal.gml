function worldRollWaveNormal(){
	
	var goon = objMilitia;
	var elite = objKnight;
	var support = objArcher;
	
	
	//goon = objSnake;
	
	
	waveArmy = [goon, goon, goon, goon];
	repeat(wave + 1){ 
		var r = irandom_range(1, 5 + floor(wave / 5));
		
		
		if(r == 3){ arrayAdd(waveArmy, support); arrayAdd(waveArmy, support); 
		} else if(r == 4){ arrayAdd(waveArmy, support); arrayAdd(waveArmy, support); arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); 
		} else if (r == 5) { arrayAdd(waveArmy, elite);
		} else if (r == 6) { arrayAdd(waveArmy, elite); arrayAdd(waveArmy, elite);
			
			
		} else { arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); arrayAdd(waveArmy, goon); }
	}

}