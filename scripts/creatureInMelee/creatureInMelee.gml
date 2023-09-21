function creatureInMelee(c1, c2){
	
	var d = distanceManhat(c1.xSpot, c1.ySpot, c2.xSpot, c2.ySpot);
	if(d == 1){ return true; }
	if(d == 2 && c1.xSpot != c2.xSpot && c1.ySpot != c2.ySpot){ return true; }
	return false;
	
}