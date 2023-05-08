lives -= 1;
with(obj_game){
alarm[1] = room_speed;	
}
audio_play_sound(msc_lose,8,false);

repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);	
	}
	
var _xx = x ;
var _yy = y ;
with (obj_particles){
	part_particles_create_color(partsys,_xx,_yy,parttypeshipdebris,c_aqua,10);
}