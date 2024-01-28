if(mouse_x <= x+sprite_width && mouse_x >= x && mouse_y <= y+sprite_height && mouse_y >= y) {
	game_controller.race_start = true;
	room_goto(RaceRoom);
}