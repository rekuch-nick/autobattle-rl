function creaturePickTarget(){
	
	
	
	if(stepTowards != noone){
		var r = creatureAdjacentTowards(stepTowards.xSpot, stepTowards.ySpot);
		stepTowards = noone;
		return r;
	}
	
	if(ai == AI.plain){ // find closest enemy
		
		var best = findClosestByAly(xSpot, ySpot, -aly);
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