function playerLoseUnit(typ){
	
	var sq = playerGetSquad(typ);
	
	if(sq == noone){ return; }
	
	
	sq.num --;
	ww.playerUnitsTotal --;
	
	if(sq.num < 1){
		
		with(objPlayerSquad){
			if(y > sq.y){ y -= 32; }
		}
		instance_destroy(sq);
		
	}
	
	
	
}