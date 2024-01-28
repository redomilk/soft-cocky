if(room = RaceRoom) {
	if(race_start == true) {
		for(var i = 0; i < instance_number(Cockroach); i++) {
			var current_roach = instance_find(Cockroach, i);
			current_roach.visible = true;
			current_roach.speed = current_roach.speed_stat;
			current_roach.image_xscale = 0.5;
			current_roach.image_yscale = 0.5;
			current_roach.direction = random(360);
			current_roach.x = room_width/2 - current_roach.sprite_width/2;
			current_roach.y = room_height/2 - current_roach.sprite_height/2;
			current_roach.dead = false;
		}
		race_start = false;
		winners = [];
		if(random(100) < 100) {
			var circle_obj = instance_find(Ring, 0);
			rand_x = random_range(-circle_obj.sprite_width/2, circle_obj.sprite_width/2);
			rand_y = random_range(-circle_obj.sprite_height/2, circle_obj.sprite_height/2);
			while(sqrt(sqr(rand_x)+sqr(rand_y)) > circle_obj.sprite_height/2) {
				rand_x = random_range(-circle_obj.sprite_width/2, circle_obj.sprite_width/2);
				rand_y = random_range(-circle_obj.sprite_height/2, circle_obj.sprite_height/2);
			}
			instance_create_layer(rand_x + room_width/2 - sprite_width/2, rand_y + room_height/2 - sprite_width/2, layer, Lizard);
		}
	}
}