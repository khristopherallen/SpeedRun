/// @description 

countdown_go = "GO!"
countdown_ = 3;
visible_ = true;
x_previous = 0;
max_spacing = 120;
speed_ = 0;
coins_ = 0;
theme_ = "lol";
pf_spacer = 40;

randomise();

/*if(!debug_mode) {
	layer_set_visible("Blocks", false);
} */

// COUNTDOWN
alarm[0] = room_speed;

// RANDOMIZE BLOCKS
alarm[2] = 1;