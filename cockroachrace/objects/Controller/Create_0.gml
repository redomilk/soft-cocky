randomize();
// [ name, sprite, speed, turn probability, size ]
classes = [
["Smokybrown", Sprite1, 0.5, 50],
["Turkestan", Sprite7, 1, 40],
["Florida Spotted", Sprite4, 1.5, 30],
["Gisborne", Sprite6, 2, 20]
];

possiblenames = [
"Soft Cocky",
"Cocky Balboa",
"Drain Lover",
"Franklin D. Roachevelt"
];

usednames = [];


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
		cur_roach.name = rand_name;
		array_push(usednames, rand_name);
	}
}
player_roach.player_roach = true;
player_roach.sprite_index = Sprite3;
race_start = false;
winners = [];