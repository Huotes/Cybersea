score = 0;
lives = 3;
global.cameraX = 0;
global.cameraWidth = 0;
global.cameraY = 0;
global.cameraHeight = 0;

draw_set_font(fnt_text);

randomize();

enum factions {
	neutral,
	ally,
	enemy
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets,
	laser_bullets,
	invencible	
}