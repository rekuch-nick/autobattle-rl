if(ww.state != State.play){ return; }



inCombatWith = creatureAttackTarget();







if(inCombatWith != noone){
	
	
	
	
	atkCD --;
	if(atkCD < 1){
		atkCD = atkCDMax;
		
		
		
		
		if( creatureInMelee(id, inCombatWith) ){
			creatureBumpTowards(inCombatWith.xSpot, inCombatWith.ySpot);
			creatureMelee(id, inCombatWith);
		} else if(shotType != noone){
			var s = instance_create_depth(x + 32, y + 32, ww.layerE, shotType);
			s.rangeDamMin = rangeDamMin;
			s.rangeDamMax = rangeDamMax;
			s.aly = aly;
			s.targetCreature = inCombatWith;
		}
	}
	
} else {


	moveCD --;
	if(moveCD < 1){
		moveCD = moveCDMax;
		
		var tar = creaturePickTarget();
		if(tar != noone){
			
			if(tar != noone && creatureCanEnter(tar.a, tar.b)){
				ww.mmap[xSpot, ySpot] = noone;
				xSpot = tar.a;
				ySpot = tar.b;
				ww.mmap[xSpot, ySpot] = id;
			}
		}
	}
	
	
}













if(x < xSpot * 32){ x += 4; }
if(x > xSpot * 32){ x -= 4; }

if(y < ySpot * 32){ y += 4; }
if(y > ySpot * 32){ y -= 4; }



if(hp < 1){
	ww.checkBattleEnd = true;
	
	with(obaCreature){
		if(inCombatWith == other.id){ inCombatWith = noone; }
	}
	
	with(obaShot){
		if(targetCreature == other.id){ targetCreature = noone; }
	}
	
	ww.mmap[xSpot, ySpot] = noone;
	instance_destroy();
}