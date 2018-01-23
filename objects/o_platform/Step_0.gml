/// @description

y+=o_game.speed_;

if (y>=room_height){
	y = -sprite_height-(16*10);
	x = o_game.x_previous;
	while (x == o_game.x_previous) {
		x = random_range(o_game.x_previous-o_game.max_spacing, o_game.x_previous+o_game.max_spacing);
		x = clamp(x, 0, room_width-sprite_width); 
		move_snap(16, 1);
	}
	
	block_size = 16;
	
	for (i=0;i<20;i++){
		for (j=0;j<12;j++){
			objX = x + block_size*j;
			objY = -sprite_height-(16*10) + block_size*i;
			obj = instance_create_layer(objX,objY,"Coins",o_coin);
		}
	} 
	
	
/*	//make some blocks
		numBlocks = random_range(3,8);
	for (j = 1; j<=numBlocks; j++){
		blockX = random_range(x,x+sprite_width);
		blockY = random_range(y,y+sprite_height);
		block = instance_create_layer(blockX,blockY,"Blocks",o_block_var1);
		with (block) {
			move_snap(16, 1);
		}
	}
	
	//make some coins
	numCoins = random_range(1,5);
	for (j = 1; j<=numCoins; j++){
		coinX = random_range(x,x+sprite_width);
		coinY = random_range(y,y+sprite_height);
		instance_create_layer(coinX,coinY,"Coins",o_coin);
	}
	
	o_game.x_previous = x; */
} 