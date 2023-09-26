function findClosestOther(skipChance, canSelf, al){
	
	var best = noone;
	var bestDis = 99;
	with(obaCreature){
		if(other.id != id || canSelf){
			if(aly == al && irandom_range(0, 99) >= skipChance){
			
				var d = distanceManhat(other.xSpot, other.ySpot, xSpot, ySpot);
				if(d < bestDis){
					best = id;
					bestDis = d;
				}
			}
		}
	}
	
	return best;
}