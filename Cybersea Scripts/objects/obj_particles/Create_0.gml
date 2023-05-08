partsys = part_system_create();

//exaust 
parttypeexhaust = part_type_create();
part_type_sprite(parttypeexhaust,spr_exhaust,false,false,false);
part_type_size(parttypeexhaust,.4,.4,0.05,0);
part_type_color3(parttypeexhaust,c_white,c_fuchsia,c_purple);
part_type_alpha3(parttypeexhaust,1,1,0);
part_type_life(parttypeexhaust,20,20);

//enemy exaust 
parttypeenemyexhaust = part_type_create();
part_type_sprite(parttypeenemyexhaust,spr_exhaust,false,false,false);
part_type_size(parttypeenemyexhaust,.4,.4,0.05,0);
part_type_color3(parttypeenemyexhaust,c_yellow,c_orange,c_red);
part_type_alpha3(parttypeenemyexhaust,1,1,0);
part_type_life(parttypeenemyexhaust,20,20);

//debris
parttypeasteroiddebris = part_type_create();
part_type_sprite(parttypeasteroiddebris,spr_asteroid_debris_strip4,false,false,true);
part_type_life(parttypeasteroiddebris,60,80);
part_type_alpha3(parttypeasteroiddebris,.8,.8,0);
part_type_direction(parttypeasteroiddebris,0,359,0,false);
part_type_orientation(parttypeasteroiddebris,0,359,1,false,false);
part_type_speed(parttypeasteroiddebris,2,2.4,-0.02,0);

parttypeshipdebris = part_type_create();
part_type_sprite(parttypeshipdebris,spr_ship_debris_strip5,false,false,true);
part_type_life(parttypeshipdebris,60,80);
part_type_alpha3(parttypeshipdebris,.8,.8,0);
part_type_direction(parttypeshipdebris,0,359,0,false);
part_type_orientation(parttypeshipdebris,0,359,1,false,false);
part_type_speed(parttypeshipdebris,2,2.4,-0.02,0);
