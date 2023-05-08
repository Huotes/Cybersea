if room == rm_game{
	var obj = obj_asteroid;
	var num = 40;
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
	var obj1 = obj_raider;
	var num1 = 8;
	var xx,yy;

var pad = 64;

repeat(num1){
xx = random_range(0,room_width);
yy = random_range(0,room_height);

	while( point_in_rectangle(xx,yy, global.cameraX - pad,global.cameraY-pad,
	global.cameraX+global.cameraWidth+pad, global.cameraY+global.cameraHeight+pad)){
	
	xx = random_range(0,room_width);
	yy = random_range(0,room_height);
	
	}
instance_create_layer(xx,yy,"Instances",obj1);
}

var obj2 = obj_brute;
	var num2 = 3;
	var xx,yy;

var pad = 64;

repeat(num2){
xx = random_range(0,room_width);
yy = random_range(0,room_height);

	while( point_in_rectangle(xx,yy, global.cameraX - pad,global.cameraY-pad,
	global.cameraX+global.cameraWidth+pad, global.cameraY+global.cameraHeight+pad)){
	
	xx = random_range(0,room_width);
	yy = random_range(0,room_height);
	
	}
instance_create_layer(xx,yy,"Instances",obj2);
}
var obj3 = obj_hunter;
	var num3 = 5;
	var xx,yy;

var pad = 64;

repeat(num3){
xx = random_range(0,room_width);
yy = random_range(0,room_height);

	while( point_in_rectangle(xx,yy, global.cameraX - pad,global.cameraY-pad,
	global.cameraX+global.cameraWidth+pad, global.cameraY+global.cameraHeight+pad)){
	
	xx = random_range(0,room_width);
	yy = random_range(0,room_height);
	
	}
instance_create_layer(xx,yy,"Instances",obj3);
}

	
	if !audio_is_playing(game_music){audio_play_sound(game_music,8,true);}
	
	alarm[0] = 60;
}
