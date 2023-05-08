event_inherited();
sprite_index = choose(spr_asteroid_huge,spr_asteroid_med,spr_asteroid_small);
direction = irandom_range(0,359);
image_angle = irandom_range(0,359);
speed = 1;
image_blend = choose(c_yellow,c_fuchsia,c_orange,c_ltgrey);