randomize();
// [ name, sprite, speed, turn probability, size ]
classes = [
["Smokybrown", Sprite1, 0.5, 30],
["Turkestan", Sprite7, 1, 50],
["Florida Woods", Sprite4, 1.5, 70],
["Gisborne", Sprite6, 2, 90]
];

possiblenames = [
"Soft Cocky",
"Cocky Balboa",
"Drain Lover",
"Franklin D. Roachevelt"
];

usednames = [];


for(var j = 0; j < 6; j++) {
	instance_create_layer(0,0,layer,Cockroach);
}
player_roach = instance_find(Cockroach, 0);
for(var i = 1; i < instance_number(Cockroach); i++) {
	var class_index = floor(random_range(0, array_length(classes)));
	var cur_roach = instance_find(Cockroach, i);
	cur_roach.class = classes[class_index];
	cur_roach.sprite_index = classes[class_index][1];
	cur_roach.speed_stat = classes[class_index][2];
	cur_roach.turn_chance = classes[class_index][3];
	if(array_length(usednames) < array_length(possiblenames)) {
		var rand_name = possiblenames[floor(random_range(0,array_length(possiblenames)))];
		while(array_contains(usednames, rand_name)) {
			var rand_name = possiblenames[floor(random_range(0,array_length(possiblenames)))];
		}
		show_debug_message(rand_name);
		cur_roach.name = rand_name;
		array_push(usednames, rand_name);
	}
}
player_roach.player_roach = true;
player_roach.x = room_width/2 + player_roach.sprite_width/2;
player_roach.y = 2*room_height/3 - sprite_height/2;
race_start = false;
winners = [];