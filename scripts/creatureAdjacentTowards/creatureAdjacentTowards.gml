function creatureAdjacentTowards(a, b){
	
	if(xSpot == a && ySpot == b){ return noone; }
	
	repeat(20){
		var r = choose(1, 2, 3, 4, 5, 6, 7, 8);
		var t = noone;
		if(r == 1 && ySpot > b){ t = { a: xSpot + 0, b: ySpot - 1 }; }
		if(r == 2 && xSpot < a){ t = { a: xSpot + 1, b: ySpot + 0 }; }
		if(r == 3 && ySpot < b){ t = { a: xSpot + 0, b: ySpot + 1 }; }
		if(r == 4 && xSpot > a){ t = { a: xSpot - 1, b: ySpot + 0 }; }
		
		if(r == 5 && xSpot < a && ySpot < b){ t = { a: xSpot + 1, b: ySpot + 1 }; }
		if(r == 6 && xSpot > a && ySpot < b){ t = { a: xSpot - 1, b: ySpot + 1 }; }
		if(r == 7 && xSpot < a && ySpot > b){ t = { a: xSpot + 1, b: ySpot - 1 }; }
		if(r == 8 && xSpot > a && ySpot > b){ t = { a: xSpot - 1, b: ySpot - 1 }; }
		
		if(t != noone && creatureCanEnter(t.a, t.b)){
			return t;
		}
		
	}
	
	return noone;
}