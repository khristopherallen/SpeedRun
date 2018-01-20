/// @description
y+=speed_;
if (y>=room_height){
	y = -sprite_height-(16*10);
	x = random(256-sprite_width);
	move_snap(16, 1);
}