function worldRollShop(){
	wave ++;
	random_set_seed(seed);
	repeat(wave * 2){
		var a = random_range(0, 1);
	}
	
	
	
	x1Purchase = 740;
	x2Purchase = 1200;
	
	/*
	for(var i=0; i<6; i++){
		var s = instance_create_depth(x1Purchase, 100 + i * 90, -1, objShopPurchase);
		s.txt = string(i);
		
		var s = instance_create_depth(x2Purchase, 100 + i * 90, -1, objShopPurchase);
		s.txt = string(i * -1);
	}*/
	
	var s = instance_create_depth(x1Purchase, 100 + 1 * 90, -1, objShopPurchase);
	s.txt = "Archer"; s.price = 10; s.priceUp = 1; s.unit = objArcher;
	
	var s = instance_create_depth(x1Purchase, 100 + 2 * 90, -1, objShopPurchase);
	var r = choose(1, 2);
	s.txt = "Militia"; s.price = 5; s.priceUp = 1; s.unit = objMilitia;
	if(r == 2 && wave >= 3){ s.txt = "Knight"; s.price = 120; s.priceUp = 1; s.unit = objKnight; }
	
	
	s = instance_create_depth(200, room_height - 70,-1, objButton);
	s.txt = "Press ENTER to fight wave " + string(wave);
	s.w = room_width - 400;
	s.buttonCode = ButtonCode.startFight;
	
	
	
	s = instance_create_depth(500, 500, -1, objButton);
	s.txt = "< Page >";
	s.w = 200;
	s.buttonCode = ButtonCode.shopPageTab;
	
}