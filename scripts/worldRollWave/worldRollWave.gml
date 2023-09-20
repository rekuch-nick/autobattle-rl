function worldRollWave(){
	
	random_set_seed(seed);
	repeat(wave * 2){
		var a = random_range(0, 1);
	}
	
	
	waveArmy = [objMilitia, objMilitia, objMilitia, objMilitia,
	objMilitia, objMilitia, objMilitia, objMilitia,
	objMilitia, objMilitia, objMilitia, objMilitia,
	objMilitia, objMilitia, objMilitia, objMilitia,
	objMilitia, objMilitia, objMilitia, objMilitia,
	objMilitia, objMilitia, objMilitia, objMilitia,
	objMilitia, objMilitia, objMilitia, objMilitia,
	
		];
	
	
	
	worldPlaceArmy(playerArmy, 1);
	
	worldPlaceArmy(waveArmy, -1);
	
	
	
	
	
	
}