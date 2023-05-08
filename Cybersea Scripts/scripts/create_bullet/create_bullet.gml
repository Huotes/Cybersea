// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_bullet(_dir,_spd,_fac,_obj,gun_type){
audio_play_sound(snd_shoot,1,false);
var _gun_type = -1;
_gun_type = gun_type;

//Escolhe o tipo da arma
switch(_gun_type){
	case powerups.three_bullets:
	var inst = instance_create_layer(x,y,"Instances",_obj);
	initialize_bullet(_dir,_spd,_fac,inst);
	
	case powerups.two_bullets:
	var _sep = 12;
	var inst = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90),"Instances",_obj);
	initialize_bullet(_dir,_spd,_fac,inst);
	
	var inst = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90),"Instances",_obj);
	initialize_bullet(_dir,_spd,_fac,inst);
	
	break;
	
	case powerups.four_bullets:
	var _sep = 7, bullet_angle;
	var i = 0; repeat(4){
	bullet_angle = _dir + (i * 90);
	var inst = instance_create_layer(
	x+lengthdir_x(_sep,bullet_angle),
	y+lengthdir_y(_sep,bullet_angle),
	"Instances",_obj
	);
	initialize_bullet(bullet_angle,_spd,_fac,inst);
	i++;
	}
	break;
	
	case powerups.star_bullets:
	var _sep = 7, bullet_angle;
	var i = 0; repeat(8){
		
	bullet_angle = _dir + (i * 45);
	
	var inst = instance_create_layer(
	x+lengthdir_x(_sep,bullet_angle),
	y+lengthdir_y(_sep,bullet_angle),
	"Instances",_obj);
	
	initialize_bullet(bullet_angle,_spd,_fac,inst);
	i++;
	}
	break;
	
	case powerups.laser_bullets:
	audio_play_sound(snd_laser,1,false);
	var inst = instance_create_layer(x,y,"Instances",obj_laser);
	initialize_bullet(_dir,_spd,_fac,inst);
	break;
	
	default:
	var inst = instance_create_layer(x,y,"Instances",_obj);
	initialize_bullet(_dir,_spd,_fac,inst);
	break;
	
}
	
}