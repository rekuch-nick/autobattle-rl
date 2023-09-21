if(ww.state != State.play){ return; }



inCombatWith = creatureAttackTarget();







if(inCombatWith != noone){
	
	
	atkCD --;
	if(atkCD < 1){
		atkCD = atkCDMax;
		if(combatRange == 1){
			creatureBumpTowards(inCombatWith.xSpot, inCombatWith.ySpot);
			creatureMelee(id, inCombatWith);
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
	
	with(objCreature){
		if(inCombatWith == other.id){ inCombatWith = noone; }
	}
	ww.mmap[xSpot, ySpot] = noone;
	instance_destroy();
}