if (irandom_range(0,5) == 0){
instance_create_layer(x,y,"Instances",obj_powerup);	
}

score += 10;
if distance_to_object(obj_ship) >= 100 {audio_play_sound(snd_asteroid_destroy_2,8,false);}
if distance_to_object(obj_ship) <= 99{audio_play_sound(snd_asteroid_destroy,8,false);}

	
	if sprite_index == spr_asteroid_huge{
		global.camerashake  = 5;
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_med;
			
		}
	}else if sprite_index == spr_asteroid_med{
		global.camerashake  = 3;
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
		}else {
		global.camerashake  = 1;
		}
	
	
	repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);	
	}
	
	
	var _xx = x ;
var _yy = y ;
with (obj_particles){
	part_particles_create_color(partsys,_xx,_yy,parttypeasteroiddebris,choose(c_yellow,c_fuchsia,c_orange,c_ltgrey),10);
}
