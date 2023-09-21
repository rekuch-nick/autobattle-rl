function worldRollWave(){
	
	random_set_seed(seed);
	repeat(wave * 2){
		var a = random_range(0, 1);
	}
	
	
	waveArmy = [objMilitia, objMilitia, objMilitia, objMilitia];
	repeat(wave + 1){ 
		arrayAdd(waveArmy, objMilitia); 
		arrayAdd(waveArmy, objMilitia); 
		arrayAdd(waveArmy, objMilitia); 
		arrayAdd(waveArmy, objMilitia); 
	}
	
	
	playerArmy = [];
	with(objPlayerSquad){
		repeat(num){
			arrayAdd(other.playerArmy, unit);
		}
	}
	
	
	
	worldPlaceArmy(playerArmy, 1);
	
	worldPlaceArmy(waveArmy, -1);
	
	
	
	
	
	
}