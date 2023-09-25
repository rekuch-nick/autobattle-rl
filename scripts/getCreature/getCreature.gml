function getCreature(role, level){
	
	if(level == 0){
		if(role == Role.brute){ return { nam: "Boar", typ: objBoar, cost: 15 } }
		if(role == Role.fighter){ return { nam: "Militia", typ: objMilitia, cost: 10 } }
		if(role == Role.striker){ return { nam: "Goblin", typ: objGoblin, cost: 10 } }
		if(role == Role.blaster){ return { nam: "Hobbit", typ: objHobbit, cost: 10 } }
		if(role == Role.support){ return { nam: "Snake", typ: objSnake, cost: 10 } }
	}
	
	
	if(level == 1){
		if(role == Role.brute){ return { nam: "Orc", typ: objOrc, cost: 30 } }
		if(role == Role.fighter){ return { nam: "Fighter", typ: objFighter, cost: 25 } }
		if(role == Role.striker){ return { nam: "Goblin Elite", typ: objGoblinAssassian, cost: 25 } }
		if(role == Role.blaster){ return { nam: "Archer", typ: objArcher, cost: 25 } }
		if(role == Role.support){ return { nam: "Druid", typ: objDruid, cost: 30 } }
	}
	
	if(level == 2){
		if(role == Role.brute){ return { nam: "Ogre", typ: objOgre, cost: 60 } }
		if(role == Role.fighter){ return { nam: "Fighter Elite", typ: objFighterElite, cost: 60 } }
		if(role == Role.striker){ return { nam: "Rogue", typ: objRogue, cost: 60 } }
		if(role == Role.blaster){ return { nam: "Evoker", typ: objEvoker, cost: 60 } }
		if(role == Role.support){ return { nam: "Healer", typ: objHealer, cost: 60 } }
	}
	
	
	return noone;
}