function creatureAttackTarget(){
	
	var best = noone;
	var bestScore = -1;
	
	with(objCreature){
		if(aly != other.aly){
			
			var disPix = point_distance(x + fat, y + fat, other.x + other.fat, other.y + other.fat);
			var dis = ceil(disPix / 32);
			
			if(dis <= other.combatRange ||
				(dis == 2 && xSpot != other.xSpot && ySpot != other.ySpot)
										){
				var tarScore = 1 + choose(0, 0, 1); /// add target select rules
				
				
				if(best == noone || tarScore > bestScore){
					best = id;
					bestScore = tarScore;
				}
			}
			
		}
	}
	
	
	
	return best;

}