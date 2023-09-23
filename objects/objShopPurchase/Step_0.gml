//s.txt = "Archer"; s.price = 10; s.priceUp = 1.3; s.unit = objArcher;

if(ww.clickL){
	if(mouse_x >= x && mouse_x < x + w){
		if(mouse_y >= y && mouse_y < y + h){
	
			if(ww.playerCoins >= price){
				ww.playerCoins -= price;
				price = floor(price * priceUp);
				playerGainUnit(unit, txt);
			}
			
			
			
			
		}
	}
	
}