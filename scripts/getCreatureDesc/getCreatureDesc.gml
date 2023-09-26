function getCreatureDesc(o){
	if(o == objBoar){ return "L0 tanky unit."; }
	if(o == objMilitia){ return "L0 balanced unit."; }
	if(o == objGoblin){ return "L0 striker. Low chance to dodge ranged attacks."; }
	if(o == objHobbit){ return "L0 short ranged stone thrower. Deals the same damage in melee and ranged."; }
	if(o == objSnake){ return "L0 weak speedy unit. Has a poison bite."; }
	
	if(o == objOrc){ return "L1 tanky unit. Chance to go berserk, attacking and moving faster for a short time."; }
	if(o == objFighter){ return "L1 balanced unit. Throws a javalin at the start of battle."; }
	if(o == objGoblinAssassian){ return "L1 striker. High chance to dodge ranged attacks."; }
	if(o == objArcher){ return "L1 ranged attacker."; }
	if(o == objDruid){ return "L1 weak short ranged attacker. Summons thornlings."; }
	
	if(o == objOgre){ return "L2 tanky unit."; }
	if(o == objFighterElite){ return "L2 balanced unit. Throws a javalin at the start of battle."; }
	if(o == objRogue){ return "L2 striker. Attacks cause poison."; }
	if(o == objEvoker){ return "L2 ranged attacker. Attacks have a chance to explode and hit multiple enimies."; }
	if(o == objHealer){ return "L2 warrior. Heals nearby alies."; }
	
	if(o == objTroll){ return "L3 tanky unit. Regenerates constantly."; }
	if(o == objKnight){ return "L3 balanced unit. Quick move speed."; }
	if(o == objShadow){ return "L3 striker. Teleports behind enemy lines."; }
	if(o == objArcherLong){ return "L3 ranged attacker. Targets random units."; }
	if(o == objBard){ return "L3 warrior. Inspiries alies to attack and move faster."; }
	
	return "...";
}