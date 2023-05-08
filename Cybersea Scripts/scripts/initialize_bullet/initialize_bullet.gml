// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initialize_bullet(dir,spd,fac,_bullet_inst){
	var _dir = dir;
	var _spd = spd;
	var _fac = fac;
	var _creator = id;
	var inst = _bullet_inst;
	
	with(inst){
		direction = _dir;
		if object_index == obj_bullet{ speed = _spd;}
		faction = _fac;
		creator = _creator;
		
		if (faction == factions.ally) image_blend = c_aqua;
		else if (faction == factions.enemy) image_blend = c_red;
			  }
}