function findClosestByAly(a, b, al){
	
	var best = noone;
	var bestDis = 99;
	with(obaCreature){
		if(aly == al){
			var d = distanceManhat(xSpot, ySpot, a, b);
			if(d < bestDis){
				best = id;
				bestDis = d;
			}
		}
	}
	
	return best;
}