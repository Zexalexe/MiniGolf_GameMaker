//@create by @mailat elisei 

var dir = point_direction(x, y, mouse_x, mouse_y);
var attrito = 0.99;


// per test ==> ti permette di cambiare stanza premendo tab
/*
if(keyboard_check_pressed(vk_tab)){
	room_goto_next();
}
*/

if(place_meeting(x,y+sign(y_speed)*2, obj_bush_move)){
	y_speed *= -1;
	y_speed += 3;
}
if(place_meeting(x+sign(x_speed)*15,y, obj_bush_move)){
	x_speed *= -1;
	x_speed += 3;
}


if(!in_movimento && !arrowIdx){
	instance_create_depth(obj_ball.x,obj_ball.y,-2,obj_arrow);
	arrowIdx = true;
}

if (!in_movimento && lancio) {
	audio_play_sound(ball, 0, false);
    x_speed = dcos(dir) * pwr / 20;
    y_speed = -dsin(dir) * pwr / 20;
    lancio = false;
    in_movimento = true;
	arrowIdx = 0; 
	attemps++;
}

if (in_movimento) {
	instance_destroy(obj_arrow);
	
    if (place_meeting(x+sign(x_speed)*2, y, obj_collision)) {
		audio_play_sound(snd_ball, 0, false);
        x_speed *= -1;
    } 
	else if(place_meeting(x, y+sign(y_speed)*2, obj_collision)){
		audio_play_sound(snd_ball, 0, false);
		y_speed *= -1;
	}
	else if (place_meeting(x, y+sign(y_speed), obj_collision_top) || place_meeting(x, y+sign(y_speed), obj_collision_bottom)) {
		audio_play_sound(snd_ball, 0, false);
		y_speed *= -1;
    }
	
	
	
	/*
	else if(place_meeting(x+sign(x_speed),y,obj_bush)){
		x_speed *= -1;
	}
	else if(place_meeting(x, y+sign(y_speed), obj_bush)){
		y_speed *= -1;
	}
*/
    x_speed *= attrito;
    y_speed *= attrito;
	

    x += x_speed;
    y += y_speed;

    if (abs(x_speed) < 0.1 && abs(y_speed) < 0.1) {
        x_speed = 0;
        y_speed = 0;
        in_movimento = false;
        barra_sospesa = true; 
    }
	
	if(place_meeting(x,y, obj_fake_1)){
		fake_1 = true;
	}
	else if(place_meeting(x,y, obj_fake_2)){	
		fake_2 = true;
	}
	else if(place_meeting(x,y, obj_fake_3)){
		fake_3 = true;
	}
	else if(place_meeting(x,y, obj_fake_4)){
		fake_4 = true;
	}
	
	
    if (place_meeting(x, y, obj_hole)) {
		audio_play_sound(snd_ball_in, 0, false);
		x_speed = 0;
        y_speed = 0;
        in_movimento = false;
		level++;
        instance_destroy();
    }
}

if (in_movimento) {
    barra_sospesa = true;
}
else{
	barra_sospesa = false; 
}

