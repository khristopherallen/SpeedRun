/// @description Randomize Blocks

for (i=0; i<array_length_1d(blocks_); i++) {
	blocks_[i].x = x_previous;
	while (blocks_[i].x == x_previous) {
		blocks_[i].x = random_range(x_previous-max_spacing, x_previous+max_spacing);
		blocks_[i].x = clamp(blocks_[i].x, 0, room_width-blocks_[i].sprite_width); 
		with (blocks_[i]) {
			move_snap(16, 1);
			alarm[0] = 1;
		}	
	}
	x_previous = blocks_[i].x;
}

o_character.x = blocks_[0].x+blocks_[0].sprite_width/2;