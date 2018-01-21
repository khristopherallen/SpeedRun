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
	//make some coins
	numCoins = random_range(1,5);
	for (j = 1; j<=numCoins; j++){
		coinX = random_range(x,x+sprite_width);
		coinY = random_range(y,y+sprite_height);
		instance_create_layer(coinX,coinY,"Coins",o_coin);
	}
	o_game.x_previous = x;
}