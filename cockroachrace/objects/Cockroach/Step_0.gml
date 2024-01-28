if(room = RaceRoom) {
	var distanceFromCenter = sqrt(sqr(x-room_width/2 + sprite_width/2) + sqr(y-room_height/2 + sprite_height/2));
	if(distanceFromCenter > instance_find(Ring, 0).sprite_width/2 && !array_contains(game_controller.winners, id)) {
		array_push(game_controller.winners, id);
		speed = 0;
		x = room_width - 3*(sprite_width);
		y = sprite_height*2 * (array_length(game_controller.winners));
	}

	if(random(100) <= turn_chance) {
		if(random(100) <= 5) {
			turn_multiplier *= -1;
		}
	
		direction += random_range(0, 5*turn_multiplier);
	}
} else if(room = Lobby) {
	if(!player_roach) {
		visible = false;
	} else {
		visible = true;
	}
	speed = 0;
	image_xscale = 2;
	image_yscale = 2;
	x = room_width/2 - sprite_width/2;
	y = 2*room_height/3 - sprite_height/2 + 100;
} else {
	visible = false;
}