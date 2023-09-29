function worldRollShop(){
	wave ++;
	random_set_seed(seed);
	repeat(wave * 2){
		var a = random_range(0, 1);
		rngCount += a;
	}
	
	permaDeath = false;
	if( (wave + 1) % 3 == 0){ permaDeath = true; }
	//permaDeath = true;
	
	
	x1Purchase = 740;
	x2Purchase = 1200;
	
	/*
	for(var i=0; i<6; i++){
		var s = instance_create_depth(x1Purchase, 100 + i * 90, -1, objShopPurchase);
		s.txt = string(i);
		
		var s = instance_create_depth(x2Purchase, 100 + i * 90, -1, objShopPurchase);
		s.txt = string(i * -1);
	}*/
	
	
	do {
		var skip1 = irandom_range(1, 5);
		var skip2 = irandom_range(1, 5);
	} until ( skip1 != skip2 && skip1 < skip2 );
	var cNum = 0;
	
	for(var i=1; i<=3; i++){
		cNum ++;
		if(cNum == skip1){ cNum++; }
		if(cNum == skip2){ cNum++; }
		var c = getCreature(cNum, ww.playerUnitLevel);
		if(c.typ == objOgre && playerNumberOf(objOgreMage) > 0){ c.typ = objOgreMage; c.nam = getCreatureName(c.typ); c.cost += 40; }
		
		var s = instance_create_depth(x1Purchase, 100 + i * 90, -1, objShopPurchase);
		s.txt = c.nam; s.price = c.cost; s.unit = c.typ;
	}
	
	if(playerUnitLevel > 0){
		var s = instance_create_depth(x1Purchase, 100 + 4 * 90, -1, objShopPurchase);
		var c = getCreature(irandom_range(1, 5), ww.playerUnitLevel - 1 );
		s.txt = c.nam; s.price = c.cost; s.unit = c.typ;
	}
	
	if(playerUnitLevel > 1){
		var s = instance_create_depth(x1Purchase, 100 + 5 * 90, -1, objShopPurchase);
		var c = getCreature(irandom_range(1, 5), irandom_range(0, ww.playerUnitLevel - 2) );
		s.txt = c.nam; s.price = c.cost; s.unit = c.typ;
	}
	
	
	if(playerUnitMax < playerUnitMaxMax){
		var s = instance_create_depth(x1Purchase, 100, -1, objShopPurchase);
		s.txt = "Max Army Size"; s.price = playerArmySizeCost(); s.unit = noone;
	}
	
	
	if(playerUnitLevel == 0){
		var s = instance_create_depth(x2Purchase, 100, -1, objShopPurchase);
		s.txt = "Unit Level 1"; s.price = 150; s.unit = noone;
	} else if(playerUnitLevel == 1){
		var s = instance_create_depth(x2Purchase, 100, -1, objShopPurchase);
		s.txt = "Unit Level 2"; s.price = 300; s.unit = noone;
	} else if(playerUnitLevel == 2){
		var s = instance_create_depth(x2Purchase, 100, -1, objShopPurchase);
		s.txt = "Unit Level 3"; s.price = 500; s.unit = noone;
	}
	
	
	var s = instance_create_depth(x2Purchase, 100 + 1 * 90, -1, objShopPurchase);
	s.txt = "HP Bonus"; s.price = playerHPBonusCost(); s.unit = noone;
	
	
	var tries = 0;
	var t = ""; var c = 10;
	do {
		tries ++;
		var r = choose(1, 2, 3, 4);
		if(r == 1 && playerNumberOf(objFighter) > 0 && playerUnitLevel >= 2){ t = "Promote Fighters"; c = playerNumberOf(objFighter) * 25; }
		if(r == 2 && playerNumberOf(objGoblin) > 0 && playerUnitLevel >= 1){ t = "Promote Goblins"; c = playerNumberOf(objGoblin) * 10; }
		if(r == 3 && playerNumberOf(objOgre) > 0 && playerUnitLevel >= 3){ t = "Ogres learn Magic"; c = playerNumberOf(objOgre) * 40; }
		if(r == 4 && playerNumberOf(objDruid) > 0 && playerUnitLevel >= 1 && playerDruidSummonPower < 2){ t = "Druid Power"; c = 45; }
		//if(r == 5 && playerNumberOf(objHobbit) > 0 && playerUnitLevel >= 0 && playerHobitRange < 2){ t = "Stone Throw Range"; c = 45; }
		
		
	} until (t != "" || tries > 20);
	
	if(t != ""){
		var s = instance_create_depth(x2Purchase, 100 + 2 * 90, -1, objShopPurchase);
		s.txt = t; s.price = c; s.unit = noone;
	}
	
	
	
	
	/*
	var s = instance_create_depth(x1Purchase, 100 + 1 * 90, -1, objShopPurchase);
	var r = irandom_range(0, 3);
	s.txt = "Archer"; s.price = 10; s.priceUp = 1; s.unit = objArcher;
	if(r == 1){ s.txt = "Pyro Mage"; s.price = 30; s.priceUp = 1; s.unit = objEvoker; }
	if(r == 2){ s.txt = "Healer"; s.price = 40; s.priceUp = 1; s.unit = objHealer; }
	if(r == 3){ s.txt = "Enchanter"; s.price = 120; s.priceUp = 1; s.unit = objEnchanter; }
	
	
	var s = instance_create_depth(x1Purchase, 100 + 2 * 90, -1, objShopPurchase);
	var r = irandom_range(0, 4);
	s.txt = "Militia"; s.price = 5; s.priceUp = 1; s.unit = objMilitia;
	if(r == 1){ s.txt = "Ogre"; s.price = 40; s.priceUp = 1; s.unit = objOgre; }
	if(r == 2){ s.txt = "Troll"; s.price = 60; s.priceUp = 1; s.unit = objTroll; }
	if(r == 3){ s.txt = "Knight"; s.price = 120; s.priceUp = 1; s.unit = objKnight; }
	if(r == 4){ s.txt = "Ogre Mage"; s.price = 120; s.priceUp = 1; s.unit = objOgreMage; }
	*/
	
	s = instance_create_depth(200, room_height - 70,-1, objButton);
	s.txt = "Press ENTER to fight wave " + string(wave);
	
	//s.txt += "\n" + s;
	if(permaDeath){ s.txt += "\nPERMADEATH STAGE"; }
	
	
	s.w = room_width - 400;
	s.buttonCode = ButtonCode.startFight;
	
	
	
	s = instance_create_depth(500, 500, -1, objButton);
	s.txt = "< Page >";
	s.w = 200;
	s.buttonCode = ButtonCode.shopPageTab;
	
}