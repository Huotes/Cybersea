audio_play_sound(msc_lose,1,false);
repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);	
	}
	
	global.camerashake = 4;
	
switch(object_index){
	case obj_raider: score += 15; break;	
	case obj_hunter: score += 30; break;
	case obj_brute: score += 50; break;
}

if (irandom_range(0,2) == 0){
instance_create_layer(x,y,"Instances",obj_powerup);	
}

var _xx = x ;
var _yy = y ;
with (obj_particles){
	part_particles_create_color(partsys,_xx,_yy,parttypeshipdebris,c_red,10);
}