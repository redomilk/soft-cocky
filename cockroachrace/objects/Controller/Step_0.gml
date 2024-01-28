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
		}
		race_start = false;
		winners = [];
	}
}