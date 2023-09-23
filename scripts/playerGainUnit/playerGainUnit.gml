function playerGainUnit(unit, nam){

	var o = playerGetSquad(unit);
	if(o == noone){
		var o = instance_create_depth(64, playerGetSquadY() + 32, 0, objPlayerSquad);
		o.nam = nam; o.unit = unit; o.num = 1;
	} else {
		o.num ++;
	}



}