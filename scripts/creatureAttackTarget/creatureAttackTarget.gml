function creatureAttackTarget(){
	
	if(frozen > 0){ return noone; }
	
	stepTowards = noone;
	var best = noone;
	var bestScore = -1;
	var bestOOR = false;
	
	with(obaCreature){
		if(aly != other.aly){
			
			var disPix = point_distance(x + fat, y + fat, other.x + other.fat, other.y + other.fat);
			var dis = ceil(disPix / 32);
			
			if(dis <= max(other.combatRange, other.targetOutOfRange) ||
				(dis == 2 && xSpot != other.xSpot && ySpot != other.ySpot)
										){
				var tarScore = 100 + choose(0, 1); /// add target select rules
				if(other.targetUnPoisonedBonus > 0 && dis == 2){ tarScore -= 2; }
				
				if(!poison){ tarScore += other.targetUnPoisonedBonus; }
				if(other.targetRandomBonus > 0){ tarScore += irandom_range(0, other.targetRandomBonus); }
				if(other.targetLowBonus > 0){ tarScore -= floor(hp / 10); }
				tarScore -= dis;
				
				if(best == noone || tarScore > bestScore){
					best = id;
					bestScore = tarScore;
					bestOOR = dis > other.combatRange && (dis != 2 || other.xSpot == xSpot || other.ySpot == ySpot);
				}
			}
			
		}
	}
	
	if(bestOOR){
		stepTowards = best;
		best = noone;
	}
	
	
	return best;

}