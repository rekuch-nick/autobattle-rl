if(ww.state != State.shop){ return; }

if(ww.clickR && canSell){
	if(mouse_x >= x && mouse_x < x + w){
		if(mouse_y >= y && mouse_y < y + h){
			if(ww.playerUnitsTotal > 1){
				ww.playerCoins += 5;
				num --;
				ww.playerUnitsTotal --;
				if(num < 1){
					with(objPlayerSquad){
						canSell = false;
						if(y > other.y){
							y -= 32;
						}
					}
					
					instance_destroy();
				}
			
			}
		}
	}
}

canSell = true;
