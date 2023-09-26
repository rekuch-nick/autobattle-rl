//s.txt = "Archer"; s.price = 10; s.priceUp = 1.3; s.unit = objArcher;

if(ww.clickL){
	if(mouse_x >= x && mouse_x < x + w){
		if(mouse_y >= y && mouse_y < y + h){
			
			if(ww.playerUnitsTotal >= ww.playerUnitMax && unit != noone){
				return;
			}
			
			if(ww.playerUnitMax >= ww.playerUnitMaxMax && txt == "Max Army Size"){
				return;
			}
	
			if(ww.playerCoins >= price){
				var destroy = true;
				ww.playerCoins -= price;
				price = floor(price * priceUp);
				
				if(txt == "Unit Level 1"){
					ww.playerUnitLevel = 1;
				} else if (txt == "Unit Level 2") {
					ww.playerUnitLevel = 2;
				} else if (txt == "Unit Level 3") {
					ww.playerUnitLevel = 3;
				
				} else if (txt == "Max Army Size") {
					ww.playerUnitMax = clamp(ww.playerUnitMax + 10, 0, ww.playerUnitMaxMax);
					price = playerArmySizeCost();
					if(ww.playerUnitMax >= ww.playerUnitMaxMax){ destroy = false; }
				} else {
					playerGainUnit(unit, txt);
					destroy = false;
				}
				
				if(destroy){
					instance_destroy();
				}
			}
			
			
			
			
		}
	}
	
}