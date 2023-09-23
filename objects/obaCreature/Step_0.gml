if(ww.state != State.play){ return; }



if(hp > 0){
	hp = clamp(hp + trollRegen, 0, hpMax);
	hp = clamp(hp - summonDie, 0, hpMax);
	if(poison){
		hp -= .15;
	}
}


inCombatWith = creatureAttackTarget();







if(inCombatWith != noone){
	
	
	
	
	atkCD --;
	if(atkCD < 1){
		atkCD = atkCDMax;
		
		
		if(mp > 0 && spell != noone && irandom_range(0, 99) < spellChance){
			if(spell == Spell.summon){
				var t = tileEmptyAdjacent(xSpot, ySpot);
				if(t != noone){
					mp --;
					ww.mmap[t.a, t.b] = instance_create_depth(t.a * 32, t.b * 32, depth, summonKind);
					ww.mmap[t.a, t.b].aly = aly;
				}
			}
			if(spell == Spell.healing){
				mp --;
				healBurst(xSpot, ySpot, 6, aly, 200);
			}
			
			
		}
		
		
		
		
		
		
		if( creatureInMelee(id, inCombatWith) ){
			creatureBumpTowards(inCombatWith.xSpot, inCombatWith.ySpot);
			creatureMelee(id, inCombatWith);
		} else if(shotType != noone){
			var s = instance_create_depth(x + fat, y + fat, ww.layerE, shotType);
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




if(flicker){
	image_alpha = random_range(.5, 1);
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