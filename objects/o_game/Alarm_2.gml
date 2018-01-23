/// @description Randomize Blocks

for (i=0; i<array_length_1d(blocks_); i++) {
	blocks_[i].x = x_previous;
	while (blocks_[i].x == x_previous) {
		blocks_[i].x = random_range(x_previous-max_spacing, x_previous+max_spacing);
		blocks_[i].x = clamp(blocks_[i].x, 0, room_width-blocks_[i].sprite_width); 
		with (blocks_[i]) {
			move_snap(16, 1);
		}	
	}
	x_previous = blocks_[i].x;
	
	//make some blocks
		numBlocks = random_range(3,8);
	for (j = 1; j<=numBlocks; j++){
		blockX = random_range(blocks_[i].x,blocks_[i].x+blocks_[i].sprite_width);
		blockY = random_range(blocks_[i].y,blocks_[i].y+blocks_[i].sprite_height);
		block = instance_create_layer(blockX,blockY,"Blocks",o_block_var1);
		with (block) {
			move_snap(16, 1);
		}
	}
	
	//make some coins
	numCoins = random_range(1,5);
	for (j = 1; j<=numCoins; j++){
		coinX = random_range(blocks_[i].x,blocks_[i].x+blocks_[i].sprite_width);
		coinY = random_range(blocks_[i].y,blocks_[i].y+blocks_[i].sprite_height);
		instance_create_layer(coinX,coinY,"Coins",o_coin);
	}
}

o_character.x = blocks_[0].x+blocks_[0].sprite_width/2;