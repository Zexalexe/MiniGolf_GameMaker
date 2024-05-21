//created by @mailat elisei 

var SPACE_P = keyboard_check_pressed(vk_space);
var SPACE_R = keyboard_check_released(vk_space);

var MOUSE_P = mouse_check_button_pressed(mb_left);
var MOUSE_R = mouse_check_button_released(mb_left);

if(!barra_sospesa){
	if(!in_movimento){
		if(SPACE_P || MOUSE_P){
			x_speed = 8;
		}
		else if(SPACE_R || MOUSE_R){
			x_speed = 0;
			pwr = x - xstart;
			obj_ball.lancio = true;
		}

	}
}
else{
	x = 575;
	y = 1067;
}

x += x_speed;

if(place_meeting(x,y,obj_collision)){
	x_speed *= -1;
}

