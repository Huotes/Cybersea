//Segue a nave

if instance_exists(target){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);

	global.cameraX = clamp(global.cameraX,0,room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY,0,room_width-global.cameraHeight);
}

//tremedeira da camera
global.cameraX += random_range(-global.camerashake,global.camerashake);
global.cameraY += random_range(-global.camerashake,global.camerashake);

if global.camerashake > 0 {
global.camerashake -= 0.2;
if global.camerashake < 0 {global.camerashake = 0;}
}

camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);

layer_x("Parallax_0",global.cameraX*.98);
layer_y("Parallax_0",global.cameraY*.98);

layer_x("Parallax_1",global.cameraX*.92);
layer_y("Parallax_1",global.cameraY*.92);

layer_x("Parallax_2",global.cameraX*.9);
layer_y("Parallax_2",global.cameraY*.9);

layer_x("Parallax_3",global.cameraX*.88);
layer_y("Parallax_3",global.cameraY*.88);