draw_self();

if(room = RaceRoom) {
	draw_set_color(c_white);
	draw_set_font(font_cock);
	if(!array_contains(game_controller.winners, id)) {
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x + sprite_width/2, y, name);
	} else {
		draw_set_halign(fa_right);
		draw_set_valign(fa_middle);
		draw_text(x, y + sprite_height/2, string(array_get_index(game_controller.winners, id) + 1) + ": " + name);
	}
}
