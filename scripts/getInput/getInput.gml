function getInput(){
	
	pressedOK = keyboard_check_pressed(vk_enter);
	pressedNO = keyboard_check_pressed(vk_backspace);
	
	
	clickL = mouse_check_button_pressed(mb_left);
	
	clickR = mouse_check_button_pressed(mb_right);
	
	scrollIn = 0;
	if(mouse_wheel_up()){ scrollIn --; }
	if(mouse_wheel_down()){ scrollIn ++; }
	
	
}