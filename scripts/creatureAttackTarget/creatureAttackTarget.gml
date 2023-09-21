function creatureAttackTarget(){
	
	var best = noone;
	var bestScore = -1;
	
	with(obaCreature){
		if(aly != other.aly){
			
			var disPix = point_distance(x + fat, y + fat, other.x + other.fat, other.y + other.fat);
			var dis = ceil(disPix / 32);
			
			if(dis <= other.combatRange ||
				(dis == 2 && xSpot != other.xSpot && ySpot != other.ySpot)
										){
				var tarScore = 100 + choose(0, 1); /// add target select rules
				tarScore -= dis;
				
				if(best == noone || tarScore > bestScore){
					best = id;
					bestScore = tarScore;
				}
			}
			
		}
	}
	
	
	
	return best;

}