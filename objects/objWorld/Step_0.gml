getInput();


if(state == State.title){
	
	if(pressedOK){
		worldRollShop();
		state = State.shop;
		return;
	}
	
}



if(state == State.shop){
	
	if(pressedOK){
		worldRollWave();
		state = State.playStarting;
		stateCD = 30 * 1;
		return;
	}
	
}

if(state == State.playStarting){
	stateCD --;
	if(stateCD < 1){
		state = State.play;
	}
}



if(state == State.play){
	if(checkBattleEnd){
		var playerUnits = 0;
		var foeUnits = 0;
		with(obaCreature){
			if(aly == 1){ playerUnits ++; }
			if(aly == -1){ foeUnits ++; }
		}
		checkBattleEnd = false;
		if(foeUnits < 1){
			worldReset();
			worldRollShop();
			state = State.shop;
			return;
		} else if (playerUnits < 1){
			// game over
		}
	}
	
	
	
	
}