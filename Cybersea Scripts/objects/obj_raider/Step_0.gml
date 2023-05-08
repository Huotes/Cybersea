event_inherited();

if !instance_exists(obj_ship){exit;}

if point_distance(x,y,obj_ship.x,obj_ship.y) < 250{
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle,0.1);
	
	bulletCounter++;
	if bulletCounter >= 45{
		create_bullet(image_angle,9,faction,obj_bullet2);
		bulletCounter = 0;
	}
	
}else{
		image_angle = lerp(image_angle,direction,0.1);
}
