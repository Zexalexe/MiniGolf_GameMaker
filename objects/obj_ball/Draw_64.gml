//@create by @mailat elisei 

draw_set_font(fnt_game_info); 
draw_set_color(c_white);

draw_text(192,480, level);

draw_text(192, 720, attemps);


if(fake_1){
	draw_set_font(fnt_holeF);
	draw_set_color(c_black); 
	draw_text(obj_fake_1.x-100, obj_fake_1.y-40, "I'm the fake one ;)");
	instance_create_depth(coord_x, coord_y, 20, obj_hole);
}
if(fake_2){
	draw_set_font(fnt_holeF);
	draw_set_color(c_black); 
	draw_text(obj_fake_2.x-80, obj_fake_2.y-50, "Try again XD");
	instance_create_depth(coord_x, coord_y, 20, obj_hole);
}

if(fake_3){
	draw_set_font(fnt_holeF);
	draw_set_color(c_black); 
	draw_text(obj_fake_3.x-100, obj_fake_3.y-50, "Not even this time :)");
	instance_create_depth(coord_x, coord_y, 20, obj_hole);
}
if(fake_4){
	draw_set_font(fnt_holeF);
	draw_set_color(c_black); 
	draw_text(obj_fake_4.x-100, obj_fake_4.y-80, "You didn't get it");
	instance_create_depth(coord_x, coord_y, 20, obj_hole);
}