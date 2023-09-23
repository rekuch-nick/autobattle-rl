




if(ww.clickL){
	if(mouse_x >= x && mouse_x < x + w){
		if(mouse_y >= y && mouse_y < y + h){
	
			if(buttonCode == ButtonCode.startGame || buttonCode == ButtonCode.startFight){
		
				ww.startPressed = true;
			}
			
			
			
			
			
			
			if(buttonCode == ButtonCode.shopPageTab){
				
				with(objShopPurchase){
					if(x == ww.x1Purchase){
						x = ww.x2Purchase;
					} else {
						x = ww.x1Purchase;
					}
				}
				
				
			}
			
			
			
			
			
			
			
			
			
		}
	}
	
}