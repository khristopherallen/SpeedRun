/// @description

y+=o_game.speed_;

if (y>=room_height){
	y = -sprite_height-(16*10);
	x = o_game.x_previous;
	while (x == o_game.x_previous) {
		x = random_range(o_game.x_previous-o_game.max_spacing, o_game.x_previous+o_game.max_spacing);
		x = clamp(x, 0, room_width-sprite_width); 
		move_snap(32, 1);
	}
	alarm[0] = 1;
	o_game.x_previous = x;
} 