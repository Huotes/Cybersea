/// @description Camera Setup

//camera
global.cameraX = 0;
global.cameraY = 0;
target = obj_ship;

global.cameraWidth = 500;
global.cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;
camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

//Display
displayScale = 2;
displayWidth = global.cameraWidth * displayScale;
displayHeight = global.cameraHeight * displayScale;

window_set_size(displayWidth,displayHeight);
surface_resize(application_surface,displayWidth,displayHeight);

//GUI
display_set_gui_size(global.cameraWidth,global.cameraHeight);

alarm[0] = 1;