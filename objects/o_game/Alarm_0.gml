/// @description 

countdown_ -= 1;

if (countdown_ >= 1) {
	alarm[0] = room_speed;
} else {
	countdown_ = countdown_go;
	o_block.speed_ = 3;
	alarm[1] = room_speed;
}

