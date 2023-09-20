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