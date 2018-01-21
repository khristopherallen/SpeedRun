/// @description 

countdown_go = "GO!"
countdown_ = 3;
visible_ = true;
x_previous = room_width/2;
max_spacing = 240;
blocks_ = [inst_block1, inst_block2, inst_block3, inst_block4];
speed_ = 0;
coins_ = 0;
randomise();

/*if(!debug_mode) {
	layer_set_visible("Blocks", false);
} */

// COUNTDOWN
alarm[0] = room_speed;

// RANDOMIZE BLOCKS
alarm[2] = 1;