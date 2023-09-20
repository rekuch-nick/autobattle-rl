function creaturePickTarget(){
	
	if(ai == AI.plain){ // find closest enemy
		
		
		var best = noone;
		var bestDis = 99;
		with(objCreature){
			if(aly != other.aly){
				var d = distanceManhat(xSpot, ySpot, other.xSpot, other.ySpot);
				if(d < bestDis){
					best = id;
					bestDis = d;
				}
			}
		}
		
		var tar = best == noone ? best : { a: best.xSpot, b: best.ySpot };
		if(tar == noone){ return noone; }
		tar = pathing(xSpot, ySpot, tar.a, tar.b);
		if(tar == noone){
			//try step towards
			tar = creatureAdjacentTowards(best.xSpot, best.ySpot);
			if(tar != noone){ return tar; }
			
			
			//try random step
		}
		
		return tar;
	}
	
	
	return noone;
}