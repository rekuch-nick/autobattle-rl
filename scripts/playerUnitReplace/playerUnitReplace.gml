function playerUnitReplace(c1, c2){
	
	var n = playerNumberOf(c1);
	
	var sq = playerGetSquad(c1);
	var yy = sq.y;
	
	
	
	ww.playerUnitsTotal -= n;
	repeat(n){
		playerGainUnit(c2, getCreatureName(c2));
	}
	
	
	
	
	with(objPlayerSquad){ if(y > yy){
		y -= 32;
	}}
	
	instance_destroy(sq);
	
}