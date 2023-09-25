//s.txt = "Archer"; s.price = 10; s.priceUp = 1.3; s.unit = objArcher;

if(ww.clickL){
	if(mouse_x >= x && mouse_x < x + w){
		if(mouse_y >= y && mouse_y < y + h){
			
			if(ww.playerUnitsTotal >= ww.playerUnitMax && unit != noone){
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