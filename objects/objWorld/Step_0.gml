getInput();
ms ++; if(ms >= 60){ ms = 0; }


if(state == State.title){
	
	seed += xIn;
	
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
		room_speed = battleSpeed;
		state = State.play;
	}
}

if(state == State.playStopping){
	stateCD --;
	if(stateCD < 1){
		worldReset();
		worldRollShop();
		state = State.shop;
		playerCoins += coinReward;
		return;
	}
}



if(state == State.play){
	if(scrollIn < 0){ room_speed = clamp(room_speed + 30, 30, 360); }
	if(scrollIn > 0){ room_speed = clamp(room_speed - 30, 30, 360); }
	
	if(checkBattleEnd){
		var playerUnits = 0;
		var foeUnits = 0;
		with(obaCreature){
			if(aly == 1){ playerUnits ++; }
			if(aly == -1){ foeUnits ++; }
		}
		checkBattleEnd = false;
		if(foeUnits < 1){
			battleSpeed = room_speed;
			room_speed = 60;
			state = State.playStopping;
			stateCD = 30 * 2;
			return;
		} else if (playerUnits < 1){
			// game over
		}
	}
	
	
	
	
}