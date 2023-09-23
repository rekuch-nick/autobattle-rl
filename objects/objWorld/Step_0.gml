getInput();
ms ++; if(ms >= 60){ ms = 0; }


if(state == State.title){
	
	if(startPressed || pressedOK){
		startPressed = false;
		with(objButton){ instance_destroy(); }
		worldRollShop();
		state = State.shop;
		return;
	}
	
}



if(state == State.shop){
	
	if(startPressed || pressedOK){
		startPressed = false;
		with(objButton){ instance_destroy(); }
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
			playerCoins += coinReward;
			return;
		} else if (playerUnits < 1){
			// game over
		}
	}
	
	
	
	
}