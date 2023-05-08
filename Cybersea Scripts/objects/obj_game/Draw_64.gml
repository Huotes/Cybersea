switch(room){
	case rm_game :
draw_text(20,20,"SCORE: "+string(score));
draw_text(20,40,"LIVES: "+string(lives));
break;

	case rm_start :
	draw_set_halign(fa_center);
	var c = c_aqua;
	draw_text_transformed_color(
	room_width/2,100,"CYBERSEA", 3, 3, 0, c,c,c,c,1
	);
		draw_text(
			room_width/2,200,
@"Score 1,000 points to win!
UP: to Accel
LEFT or RIGHT: to move direction
SPACE: to shoot
>> PRESS ENTER TO PLAY <<
"
		);
		draw_set_halign(fa_left);
	break;
	
	case rm_win :
	draw_set_halign(fa_center);
	var c = c_lime;
	draw_text_transformed_color(
	room_width/2,200,"YOU WIN!", 3, 3, 0, c,c,c,c,1
	);
		draw_text(
			room_width/2,300,
"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
	
	break;
	
	case rm_gameover :
	
	draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_color(
	room_width/2,150,"GAME OVER", 3, 3, 0, c,c,c,c,1
	);
		draw_text(
			room_width/2,250,
"FINAL SCORE: "+string(score)
		);
		
		draw_text(
			room_width/2,300,
"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
	
	break;
}