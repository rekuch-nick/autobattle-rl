function worldRollWave(){
	
	random_set_seed(seed);
	repeat(wave * 2){
		var a = random_range(0, 1);
	}
	
	coinReward = choose(20, 25, 30) + (wave * 10);
	waveArmy = [];
	
	//if(wave == 4 && irandom_range(1, 4) == 1){
	//	repeat(40){	arrayAdd(waveArmy, objSnake); };
	//} else {
		worldRollWaveNormal();
	//}
	
	
	
	playerArmy = [];
	with(objPlayerSquad){
		repeat(num){
			arrayAdd(other.playerArmy, unit);
		}
	}
	
	
	
	worldPlaceArmy(playerArmy, 1);
	
	worldPlaceArmy(waveArmy, -1);
	
	
	
	
	
	
}