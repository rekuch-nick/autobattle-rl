if(ww.state != State.play){ return; }



if(hp > 0){
	hp = clamp(hp + trollRegen, 0, hpMax);
	hp = clamp(hp - summonDie, 0, hpMax);
	if(poison){
		hp -= .15;
	}
}

if(freezeImmune){ frozen = 0; }

inCombatWith = creatureAttackTarget();



if(inCombatWith != noone){
	
	
	
	
	atkCD --;
	if(rage > 0){ rage --; atkCD -= 2; }
	if(atkCD < 1){
		atkCD = atkCDMax;
		
		if(mindControl && irandom_range(0, 99) < mindSave){
			mindControl = false; aly *= -1; return;
		}
		
		
		if(mp > 0 && spell != noone && irandom_range(0, 99) < spellChance){
			spellChance -= spellChanceLoss;
			
			if(spell == Spell.summon){
				var t = tileEmptyAdjacent(xSpot, ySpot);
				if(t != noone){
					mp --;
					ww.mmap[t.a, t.b] = instance_create_depth(t.a * 32, t.b * 32, depth, summonKind);
					ww.mmap[t.a, t.b].aly = aly;
					
					if(aly == 1 && object_index == objDruid && summonKind == objEntSummon){
						ww.mmap[t.a, t.b].hp *= ww.playerDruidSummonPower;
						ww.mmap[t.a, t.b].hp = ww.mmap[t.a, t.b].hpMax;
						ww.mmap[t.a, t.b].meleeDamMax *= ww.playerDruidSummonPower;
						if(ww.playerDruidSummonPower > 1){
							ww.mmap[t.a, t.b].col = ww.cBrownThorn;
						}
					}
				}
			}
			if(spell == Spell.healing){
				mp --;
				healBurst(xSpot, ySpot, 6, aly, 100);
			}
			if(spell == Spell.rage){
				var c = findClosestOther(50, false, aly);
				if(c != noone && c.rage < 1){
					mp --;
					c.rage = 60 * 60;
				}
			}
			if(spell == Spell.warp){
				var a = aly == 1 ? irandom_range(ww.W - 5, ww.W - 1) : irandom_range(0, 5);
				var b = irandom_range(0, ww.H - 1);
				if(ww.bmap[a, b] == noone && ww.mmap[a, b] == noone){
					ww.mmap[xSpot, ySpot] = instance_create_depth(xSpot * 32, ySpot * 32, depth, summonKind);
					ww.mmap[xSpot, ySpot].aly = aly;
					
					ww.mmap[a, b] = id;
					xSpot = a; ySpot = b;
					x = a * 32; y = b * 32;
					mp --;
				}
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
			
			if(limitedAmmo){ 
				ammo --;
				if(ammo < 1){
					shotType = noone;
					combatRange = 1;
				}
			}
		}
	}
	
} else {

	if(frozen > 0){
		frozen --;
		moveCD = max(moveCD + 1, 2);
	}
	moveCD --;
	if(rage > 0){ rage --; moveCD -= 1; }
	if(moveCD < 1){
		
		if(irandom_range(0, 99) < speedUpChance && moveCDMax >= speedMin){
			moveCDMax -= 2;
		}
		
		moveCD = moveCDMax;
		
		var tar = creaturePickTarget();
		
		if(tar != noone){
			
			if(tar != noone && creatureCanEnter(tar.a, tar.b)){
				ww.mmap[xSpot, ySpot] = noone;
				xSpot = tar.a;
				ySpot = tar.b;
				ww.mmap[xSpot, ySpot] = id;
			}
		} else {
			//if tar == noone, stuck is likely, so lose abilities that can make stuck
			targetOutOfRange = 0;
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
	
	if(aly == 1 && ww.permaDeath){
		playerLoseUnit(object_index);
	}
	
	
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