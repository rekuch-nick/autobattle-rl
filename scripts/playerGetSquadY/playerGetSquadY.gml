function playerGetSquadY(){
	var low = 0;
	with(objPlayerSquad){
		if(y > low){
			low = y;
		}
	}
	return low;
}