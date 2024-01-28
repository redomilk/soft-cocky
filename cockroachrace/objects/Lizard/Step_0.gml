if(room = RaceRoom) {
	for(var i = 0; i < instance_number(Cockroach); i++) {
		cur_roach = instance_find(Cockroach, i);
		cur_roach_x = cur_roach.x + cur_roach.sprite_width/2;
		cur_roach_y = cur_roach.y + cur_roach.sprite_height/2;
		if(cur_roach_x >= x && cur_roach_x <= (x + sprite_width)
		&& cur_roach_y >= y && cur_roach_y <= (y + sprite_height)) {
			cur_roach.dead = true;
		}
	}
}