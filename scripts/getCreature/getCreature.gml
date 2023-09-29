function getCreature(role, level){
	
	if(level == 0){
		if(role == Role.brute){ return { nam: "War Boar", typ: objBoar, cost: 12 } }
		if(role == Role.fighter){ return { nam: "Militia", typ: objMilitia, cost: 10 } }
		if(role == Role.striker){ return { nam: "Goblin", typ: objGoblin, cost: 9 } }
		if(role == Role.blaster){ return { nam: "Hobbit", typ: objHobbit, cost: 6 } }
		if(role == Role.support){ return { nam: "Snake", typ: objSnake, cost: 5 } }
	}
	
	
	if(level == 1){
		if(role == Role.brute){ return { nam: "Orc", typ: objOrc, cost: 30 } }
		if(role == Role.fighter){ return { nam: "Fighter", typ: objFighter, cost: 22 } }
		if(role == Role.striker){ return { nam: "Goblin Elite", typ: objGoblinAssassian, cost: 25 } }
		if(role == Role.blaster){ return { nam: "Archer", typ: objArcher, cost: 25 } }
		if(role == Role.support){ return { nam: "Druid", typ: objDruid, cost: 30 } }
	}
	
	if(level == 2){
		if(role == Role.brute){ return { nam: "Ogre", typ: objOgre, cost: 60 } }
		if(role == Role.fighter){ return { nam: "Fighter Elite", typ: objFighterElite, cost: 60 } }
		if(role == Role.striker){ return { nam: "Rogue", typ: objRogue, cost: 60 } }
		if(role == Role.blaster){ return { nam: "Evoker", typ: objEvoker, cost: 60 } }
		if(role == Role.support){ return { nam: "Healer", typ: objHealer, cost: 90 } }
	}
	
	if(level == 3){
		if(role == Role.brute){ return { nam: "Troll", typ: objTroll, cost: 100 } }
		if(role == Role.fighter){ return { nam: "Knight", typ: objKnight, cost: 100 } }
		if(role == Role.striker){ return { nam: "Shadow", typ: objShadow, cost: 100 } }
		if(role == Role.blaster){ return { nam: "Artillery", typ: objArcherLong, cost: 100 } }
		if(role == Role.support){ return { nam: "Bard", typ: objBard, cost: 100 } }
	}
	
	
	
	if(level == 5){
		if(role == Role.brute){ return { nam: "Cannon", typ: objArcherLong2, cost: 1000 } }
		if(role == Role.fighter){ return { nam: "Super Shadow", typ: objShadow2, cost: 1000 } }
		if(role == Role.striker){ return { nam: "Yeti", typ: objYeti, cost: 1000 } }
		if(role == Role.blaster){ return { nam: "Yeti", typ: objYeti, cost: 1000 } }
		if(role == Role.support){ return { nam: "Yeti", typ: objYeti, cost: 1000 } }
	}
	
	
	
	
	return noone;
}