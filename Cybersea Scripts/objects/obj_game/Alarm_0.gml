if room != rm_game{exit;}

	var obj = obj_asteroid;
	var num = 1;
var xx,yy;

var pad = 64;

repeat(num){
xx = random_range(0,room_width);
yy = random_range(0,room_height);

	while( point_in_rectangle(xx,yy, global.cameraX - pad,global.cameraY-pad,
	global.cameraX+global.cameraWidth+pad, global.cameraY+global.cameraHeight+pad)){
	
	xx = random_range(0,room_width);
	yy = random_range(0,room_height);
	
	}
instance_create_layer(xx,yy,"Instances",obj);
}


alarm[0] = 1*room_speed;